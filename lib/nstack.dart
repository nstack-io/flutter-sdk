import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart' as Foundation;
import 'package:flutter/widgets.dart';
import 'package:nstack/models/app_open.dart';
import 'package:nstack/models/language.dart';
import 'package:nstack/models/language_response.dart';
import 'package:nstack/models/localize_index.dart';
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

  final String _prefsKeyLastUpdated = "nstack_last_updated";
  final String _prefsKeyGuid = "nstack_guid";
  final String _prefsSelectedLocale = "nstack_selected_locale";

  final NStackRepository _repository;
  late List<Locale> supportedLocales;
  late NStackAppOpenData _appOpenData;
  final bool debug;

  List<Language> get availableLanguages => LocalizationRepository().availableLanguages;

  Language get activeLanguage => LocalizationRepository().pickedLanguage;

  Locale get activeLocale =>
      Locale(LocalizationRepository().pickedLanguage.locale!);

  String get checksum => LocalizationRepository().checksum;

  var _appOpenCalled = false;

  NStack(
      {required this.config,
      required this.localization,
      required List<LocalizeIndex> availableLanguages,
      required Map<String, String> bundledTranslations,
      required String pickedLanguageLocale,
      required this.debug})
      : _repository = NStackRepository(config) {
    supportedLocales = availableLanguages
        .map((e) => Locale(e.language?.locale?.split("-")[0] ?? "en",
            e.language?.locale?.split("-")[1].toUpperCase() ?? "US"))
        .toList();

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

    guid = prefs.getString(_prefsKeyGuid) ?? '';
    if (guid.isEmpty) {
      guid = Uuid().v1();
      prefs.setString(_prefsKeyGuid, guid);
    }

    lastUpdated = prefs.getString(_prefsKeyLastUpdated) ?? '';
    if (lastUpdated.isEmpty) {
      lastUpdated = DateTime.utc(1980, 1, 1).toIso8601String();
      prefs.setString(_prefsKeyLastUpdated, lastUpdated);
    }

    if (!Foundation.kIsWeb) {
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

  ///
  /// Change the localization in the internal map
  /// 1. Find the best match in the language list that the project was built with
  /// 2. Look if we have a cached localization in preferences and use that
  /// 3. Query NStack for the localization, cache it and use that
  /// 4. Fallback to bundled localizations from last build
  Future changeLocalization(Locale locale) async {
    try {
      // Direct locale match
      var localLanguage = LocalizationRepository().localizeIndexes.firstWhere(
          (element) =>
              locale.toLanguageTag().toLowerCase() ==
              (element.language?.locale?.toLowerCase() ?? ""),
          // Match language part of Locale
          orElse: () => LocalizationRepository().localizeIndexes.firstWhere(
                (element) =>
                    locale.toLanguageTag().toLowerCase().split("-")[0] ==
                    (element.language?.locale?.toLowerCase().split("-")[0] ??
                        ""),
              ));

      final prefs = await SharedPreferences.getInstance();
      final prefsKey = 'nstack_lang_${localLanguage.language!.locale}';
      var hasCachedLocalization = prefs.containsKey(prefsKey);

      if (hasCachedLocalization) {
        final cachedResponse = json.decode(prefs.getString(prefsKey)!);
        final languageResponse = LocalizationData.fromJson(cachedResponse);
        LocalizationRepository().updateLocalization(
          languageResponse.data!,
          localLanguage.language!.locale!,
        );
        _log("Switched cached localization...");
      } else {
        try {
          var localizationResponse = await _repository
              .fetchLocalizationForLanguageId(localLanguage.id!);
          // Save in cache
          prefs.setString(prefsKey, localizationResponse);

          // Switch to the language
          final translationJson = LocalizationData.fromJson(
            jsonDecode(localizationResponse),
          );
          LocalizationRepository().updateLocalization(
            translationJson.data!,
            localLanguage.language!.locale!,
          );
          _log("Switched API localization...");
        } catch (e) {
          // Use bundled localization as fallback
          _log(e.toString());
          _log(
              "Switched to bundled localization since we failed updating from API...");
          LocalizationRepository()
              .switchBundledLocalization(localLanguage.language!.locale!);
        }
      }

      prefs.setString(_prefsSelectedLocale, localLanguage.language!.locale!);
    } catch (e, s) {
      _log(e.toString());
      _log(s.toString());
    }
  }

  Future<AppOpenResult> appOpen(Locale locale) async {
    try {
      if (_appOpenCalled) {
        _log("NStack.appOpen() has already been called, returning early...");
        return AppOpenResult.success;
      }

      await _setupAppOpenData();

      // Has user selected a language in the app?
      final prefs = await SharedPreferences.getInstance();
      var languageTag = locale.toLanguageTag();
      if(prefs.containsKey(_prefsSelectedLocale)) {
        languageTag = prefs.getString(_prefsSelectedLocale) ?? locale.toLanguageTag();
        _log("NStack --> User has overwritten device locale to: $languageTag");
      }

      _log("NStack --> Calling App Open...");
      final Map<String, dynamic> result = await _repository.postAppOpen(
        acceptHeader: languageTag,
        appOpenData: _appOpenData,
        devMode: Foundation.kDebugMode,
        testMode: false,
      );

      final appOpen = AppOpen.fromJson(result);

      // Find best fit
      final bestFitLanguage = appOpen.data.localize
          ?.where((localize) => localize.language!.isBestFit == true)
          .first;

      final nstackKey = 'nstack_lang_${bestFitLanguage?.language?.locale}';

      // Fetch from the server or use the cache?
      if (bestFitLanguage?.shouldUpdate == true || !prefs.containsKey(nstackKey)) {
        // Fetch best fit language from the server
        _log(
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
        prefs.setString(
            _prefsKeyLastUpdated, DateTime.now().toUtc().toIso8601String());
      } else {
        // Using best fit language from the cache
        if (prefs.containsKey(nstackKey)) {
          _log(
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
          _log('NStack --> WARNING: No cache found for best fit language: ${bestFitLanguage?.language?.locale}');
          LocalizationRepository().switchBundledLocalization(bestFitLanguage!.language!.locale!);
        }
      }

      _log('NStack --> Updated localization.');
      _appOpenCalled = true;
      return AppOpenResult.success;
    } catch (e, s) {
      _appOpenCalled = true;
      LocalizationRepository().switchBundledLocalization(locale.toLanguageTag());
      _log('NStack --> App Open failed because of: ${e.toString()}');
      _log(s.toString());
      return AppOpenResult.failed;
    }
  }

  _log(String message) {
    if (debug) {
      print(message);
    }
  }
}

enum AppOpenResult { success, failed }
