import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get_version/get_version.dart';
import 'package:nstack/models/app_open.dart';
import 'package:nstack/models/language_response.dart';
import 'package:nstack/models/nstack_appopen_data.dart';
import 'package:nstack/models/nstack_config.dart';
import 'package:nstack/src/repository.dart';
import 'package:nstack/src/nstack_repository.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';

class NStack<T> {
  final NStackConfig config;
  final BuildContext context;
  T localization;

  final String prefsKeyLastUpdated = "nstack_last_updated";
  final String prefsKeyGuid = "nstack_guid";

  final NStackRepository _repository = NStackRepository();

  NStackAppOpenData appOpenData;

  NStack({
    @required this.config,
    @required this.context,
    @required this.localization,
    @required availableLanguages,
    @required bundledTranslations,
    @required pickedLanguageLocale,
  }) {
    Repository().setupLocalization(
        bundledTranslations, availableLanguages, pickedLanguageLocale);
  }

  Future _setupAppOpenData() async {
    WidgetsFlutterBinding.ensureInitialized();
    LocalStorageInterface prefs = await LocalStorage.getInstance();
    String projectVersion;
    String guid;
    String lastUpdated;

    try {
      projectVersion = await GetVersion.projectVersion;
    } on PlatformException {
      projectVersion = '1';
    }

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

    appOpenData = NStackAppOpenData(
        guid: guid,
        lastUpdated: lastUpdated,
        oldVersion: projectVersion,
        version: projectVersion);
  }

  Future<AppOpenResult> appOpen(Locale locale) async {
    try {
      await _setupAppOpenData();

      _repository.updateHeaders(config.projectId, config.apiKey);

      print("NStack --> Calling App Open...");
      final Map<String, dynamic> result = await _repository.postAppOpen(
        acceptHeader: locale.toLanguageTag(),
        appOpenData: appOpenData,
        devMode: false,
        testMode: false,
      );

      final appOpen = AppOpen.fromJson(result);

      final LocalStorageInterface prefs = await LocalStorage.getInstance();

      // Find best fit
      final bestFitLanguage = appOpen.data.localize
          .where((localize) => localize.language.isBestFit == true)
          .first;

      final nstackKey = 'nstack_lang_${bestFitLanguage.language.locale}';

      // Fetch from the server or use the cache?
      if (bestFitLanguage.shouldUpdate == true) {
        // Fetch best fit language from the server
        print('NStack --> Fetching best fit language: ${bestFitLanguage.language.locale}');
        final String bestFitLanguageResponse =
            await _repository.fetchLocalizationForLanguage(bestFitLanguage);
        //localization = localization.fromJson(json.decode(bestFitLanguageResponse)["data"]);
        final translationJson =
            LocalizationData.fromJson(jsonDecode(bestFitLanguageResponse));
        Repository().updateLocalization(
            translationJson.data, bestFitLanguage.language.locale);

        // Update cache for key
        prefs.setString(nstackKey, bestFitLanguageResponse);
        // Update last_updated for next app open call
        prefs.setString(prefsKeyLastUpdated, DateTime.now().toIso8601String());
      } else {
        // Using best fit language from the cache
        if (prefs.containsKey(nstackKey)) {
          print('NStack --> Using cache for best fit language: ${bestFitLanguage.language.locale}');
          final cachedResponse = json.decode(prefs.getString(nstackKey));
          final languageResponse = LocalizationData.fromJson(cachedResponse);
          //localization = localization.fromJson(cachedResponse['data']);
          Repository().updateLocalization(
              languageResponse.data, bestFitLanguage.language.locale);
          // No cache, default values (this shouldn't happen, should_update should be true)
        } else {
          print('NStack --> WARNING: No cache found for best fit language: ${bestFitLanguage.language.locale}');
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
