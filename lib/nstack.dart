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

class NStack<T> with ChangeNotifier {
  final NStackConfig config;
  final T localization;

  final String prefsKeyLastUpdated = "nstack_last_updated";
  final String prefsKeyGuid = "nstack_guid";

  final NStackRepository _repository;
  late List<Locale> supportedLocales;
  late NStackAppOpenData _appOpenData;

  Language get activeLanguage => LocalizationRepository().pickedLanguage;
  Locale get activeLocale => Locale(LocalizationRepository().pickedLanguage.locale!);

  NStack({
    required this.config,
    required this.localization,
    required List<Language> availableLanguages,
    required Map<String, String> bundledTranslations,
    required String pickedLanguageLocale,
  }) : _repository = NStackRepository(config) {
    supportedLocales = availableLanguages.map((e) => Locale(e.locale?.split("-")[0] ?? "en", e.locale?.split("-")[1].toUpperCase() ?? "US" )).toList();

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
    String guid;
    String lastUpdated;
    String platform;

    projectVersion = await PackageInfo.fromPlatform()
        .then((PackageInfo info) => info.version)
        .catchError((error) => "1");

    guid = prefs.getString(prefsKeyGuid) ?? '';
    if (guid.isEmpty) {
      guid = Uuid().v1();
      prefs.setString(prefsKeyGuid, guid);
    }

    lastUpdated = prefs.getString(prefsKeyLastUpdated) ?? '';
    if (lastUpdated.isEmpty) {
      lastUpdated = DateTime.utc(1980, 1, 1).toIso8601String();
      prefs.setString(prefsKeyLastUpdated, lastUpdated);
    }

    if(!Foundation.kIsWeb){
      if (Platform.isAndroid) {
        platform = 'android';
      } else if (Platform.isIOS) {
        platform = 'ios';
      } else {
        //need to update when new platforms come
        platform = 'unknown';
      }
    } else {
      platform = 'web';
    }


    _appOpenData = NStackAppOpenData(
      platform: platform,
      guid: guid,
      lastUpdated: lastUpdated,
      oldVersion: projectVersion,
      version: projectVersion,
    );
  }

  Future changeLocalizationOffline(Locale locale) async {
    try {
      // Direct locale match
      var localLanguage = LocalizationRepository().availableLanguages.firstWhere(
          (element) => locale.toLanguageTag().toLowerCase() == (element.locale?.toLowerCase() ?? ""),
          // Match language part of Locale
          orElse: () => LocalizationRepository().availableLanguages.firstWhere(
                  (element) => locale.toLanguageTag().toLowerCase().split("-")[0] == (element.locale?.toLowerCase().split("-")[0] ?? ""),
                  // Fallback to default from NStack
                  orElse: () => LocalizationRepository().availableLanguages.firstWhere((element) => element.isDefault)
          )
      );
      LocalizationRepository().switchBundledLocalization(localLanguage.locale!);
      print("switched!");
      notifyListeners();
    } catch (e, s) {
      print(e);
      print(s);
    }
  }

  Future changeLocalization(Locale locale) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      var availableLanguages = await _repository.fetchAvailableLanguages();
      var languageFromAPI = availableLanguages.firstWhere(
              (element) => locale.toLanguageTag().toLowerCase() == (element.language?.locale?.toLowerCase() ?? ""),
          orElse: () => availableLanguages.firstWhere((element) => element.language?.isDefault ?? false)
      );
      print('Language from API: ${languageFromAPI.language?.locale}');
      var localizationResponse = await _repository.fetchLocalizationForLanguage(languageFromAPI);

      final translationJson = LocalizationData.fromJson(
        jsonDecode(localizationResponse),
      );
      LocalizationRepository().updateLocalization(
        translationJson.data!,
        languageFromAPI.language!.locale!,
      );
      print('Updated language in repo!');

      // Update cache for key
      final nstackKey = 'nstack_lang_${languageFromAPI.language?.locale}';
      prefs.setString(nstackKey, localizationResponse);

      notifyListeners();

      // Update last_updated for next app open call
      //prefs.setString(prefsKeyLastUpdated, DateTime.now().toUtc().toIso8601String());
    } catch (e, s) {
      print(s);
    }
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
      final bestFitLanguage = appOpen.data.localize
          ?.where((localize) => localize.language!.isBestFit == true)
          .first;

      final nstackKey = 'nstack_lang_${bestFitLanguage?.language?.locale}';

      // Fetch from the server or use the cache?
      if (bestFitLanguage?.shouldUpdate == true) {
        // Fetch best fit language from the server
        print(
            'NStack --> Fetching best fit language: ${bestFitLanguage!.language!.locale}');
        final String bestFitLanguageResponse =
        await _repository.fetchLocalizationForLanguage(
          bestFitLanguage,
        );
        final translationJson = LocalizationData.fromJson(
          jsonDecode(bestFitLanguageResponse),
        );
        LocalizationRepository().updateLocalization(
          translationJson.data!,
          bestFitLanguage.language!.locale!,
        );

        // Update cache for key
        prefs.setString(nstackKey, bestFitLanguageResponse);
        // Update last_updated for next app open call
        prefs.setString(prefsKeyLastUpdated, DateTime.now().toUtc().toIso8601String());
      } else {
        // Using best fit language from the cache
        if (prefs.containsKey(nstackKey)) {
          print(
              'NStack --> Using cache for best fit language: ${bestFitLanguage?.language?.locale}');
          final cachedResponse = json.decode(prefs.getString(nstackKey)!);
          final languageResponse = LocalizationData.fromJson(cachedResponse);
          //localization = localization.fromJson(cachedResponse['data']);
          LocalizationRepository().updateLocalization(
            languageResponse.data!,
            bestFitLanguage!.language!.locale!,
          );
          // No cache, default values (this shouldn't happen, should_update should be true)
        } else {
          print(
              'NStack --> WARNING: No cache found for best fit language: ${bestFitLanguage?.language?.locale}');
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
