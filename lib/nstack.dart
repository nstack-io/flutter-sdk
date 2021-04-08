import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart' as Foundation;
import 'package:flutter/widgets.dart';
import 'package:nstack/models/app_open.dart';
import 'package:nstack/models/language.dart';
import 'package:nstack/models/language_response.dart';
import 'package:nstack/models/nstack_appopen_data.dart';
import 'package:nstack/models/nstack_config.dart';
import 'package:nstack/src/nstack_repository.dart';
import 'package:nstack/src/repository.dart';
import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class NStack<T> {
  final NStackConfig config;
  final T localization;

  final String prefsKeyLastUpdated = "nstack_last_updated";
  final String prefsKeyGuid = "nstack_guid";

  final NStackRepository _repository;

  late NStackAppOpenData _appOpenData;

  NStack({
    required this.config,
    required this.localization,
    required List<Language?> availableLanguages,
    required Map<String, String> bundledTranslations,
    required String pickedLanguageLocale,
  }) : _repository = NStackRepository(config) {
    LocalizationRepository().setupLocalization(
      bundledTranslations,
      availableLanguages,
      pickedLanguageLocale,
    );
  }

  Future<void> _setupAppOpenData() async {
    WidgetsFlutterBinding.ensureInitialized();
    final prefs = await SharedPreferences.getInstance();
    String projectVersion;
    String? guid;
    String? lastUpdated;
    String platform;

    projectVersion = await PackageInfo.fromPlatform()
        .then((PackageInfo info) => info.version)
        .catchError((error) => "1");

    if (prefs.containsKey(prefsKeyGuid)) {
      guid = prefs.getString(prefsKeyGuid);
    } else {
      guid = Uuid().v1();
      prefs.setString(prefsKeyGuid, guid);
    }

    if (prefs.containsKey(prefsKeyLastUpdated)) {
      lastUpdated = prefs.getString(prefsKeyLastUpdated);
    } else {
      lastUpdated = DateTime.utc(1980, 1, 1).toIso8601String();
      prefs.setString(prefsKeyLastUpdated, lastUpdated);
    }

    if (Platform.isAndroid) {
      platform = 'android';
    } else if (Platform.isIOS) {
      platform = 'ios';
    } else {
      platform = 'flutter';
    }

    _appOpenData = NStackAppOpenData(
      platform: platform,
      guid: guid,
      lastUpdated: lastUpdated,
      oldVersion: projectVersion,
      version: projectVersion,
    );
  }

  Future<AppOpenResult> appOpen(Locale locale) async {
    try {
      await _setupAppOpenData();

      print("NStack --> Calling App Open...");
      final Map<String, dynamic> result = await _repository.postAppOpen(
        acceptHeader: locale.toLanguageTag(),
        appOpenData: _appOpenData,
        devMode: Foundation.kDebugMode,
        testMode: false,
      );

      final appOpen = AppOpen.fromJson(result);

      final prefs = await SharedPreferences.getInstance();

      // Find best fit
      final bestFitLanguage = appOpen.data.localize!
          .where((localize) => localize.language!.isBestFit == true)
          .first;

      final nstackKey = 'nstack_lang_${bestFitLanguage.language!.locale}';

      // Fetch from the server or use the cache?
      if (bestFitLanguage.shouldUpdate == true) {
        // Fetch best fit language from the server
        print(
            'NStack --> Fetching best fit language: ${bestFitLanguage.language!.locale}');
        final String bestFitLanguageResponse =
            await _repository.fetchLocalizationForLanguage(bestFitLanguage);
        //localization = localization.fromJson(json.decode(bestFitLanguageResponse)["data"]);
        final translationJson =
            LocalizationData.fromJson(jsonDecode(bestFitLanguageResponse));
        LocalizationRepository().updateLocalization(
            translationJson.data, bestFitLanguage.language!.locale);

        // Update cache for key
        prefs.setString(nstackKey, bestFitLanguageResponse);
        // Update last_updated for next app open call
        prefs.setString(prefsKeyLastUpdated, DateTime.now().toIso8601String());
      } else {
        // Using best fit language from the cache
        if (prefs.containsKey(nstackKey)) {
          print(
              'NStack --> Using cache for best fit language: ${bestFitLanguage.language!.locale}');
          final cachedResponse = json.decode(prefs.getString(nstackKey)!);
          final languageResponse = LocalizationData.fromJson(cachedResponse);
          //localization = localization.fromJson(cachedResponse['data']);
          LocalizationRepository().updateLocalization(
              languageResponse.data, bestFitLanguage.language!.locale);
          // No cache, default values (this shouldn't happen, should_update should be true)
        } else {
          print(
              'NStack --> WARNING: No cache found for best fit language: ${bestFitLanguage.language!.locale}');
        }
      }

      print('NStack --> Updated localization.');
      return AppOpenResult.success;
    } catch (e, s) {
      print('NStack --> App Open failed because of: ${e.toString()}');
      print(s);
      return AppOpenResult.failed;
    }
  }
}

enum AppOpenResult { success, failed }
