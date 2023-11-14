import 'dart:async';
import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:nstack/models/app_open.dart';
import 'package:nstack/models/language.dart';
import 'package:nstack/models/language_response.dart';
import 'package:nstack/models/localize_index.dart';
import 'package:nstack/models/nstack_config.dart';
import 'package:nstack/src/nstack_repository.dart';
import 'package:nstack/src/repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// The localization feature of NStack.
class NStackLocalization<TLocalization> {
  static const _prefsKeyLastUpdated = "nstack_last_updated";
  static const _prefsSelectedLocale = "nstack_selected_locale";

  final _onLocaleChanged = StreamController<Locale>.broadcast();

  final NStackConfig config;
  final TLocalization assets;
  final NStackRepository _repository;
  late List<Locale> supportedLocales;

  final bool isDebug;

  List<Language> get availableLanguages =>
      LocalizationRepository().availableLanguages;

  Language get activeLanguage => LocalizationRepository().pickedLanguage;

  Locale get activeLocale => Locale(activeLanguage.locale!);

  String get checksum => LocalizationRepository().checksum;

  Stream<Locale> get onLocaleChanged => _onLocaleChanged.stream;

  Locale? clientLocale;

  NStackLocalization({
    required this.config,
    required this.assets,
    required List<LocalizeIndex> availableLanguages,
    required Map<String, String> bundledTranslations,
    required String pickedLanguageLocale,
    required this.isDebug,
  }) : _repository = NStackRepository(config) {
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

  Future<void> _updateLocaleAndNotify({
    required Map<String, dynamic> translationData,
    required String languageLocale,
    required Locale locale,
  }) async {
    await LocalizationRepository().updateLocalization(
      translationData,
      languageLocale,
    );

    _onLocaleChanged.add(locale);
  }

  /// Change the localization in the internal map
  /// 1. Find the best match in the language list that the project was built with
  /// 2. Look if we have a cached localization in preferences and use that
  /// 3. Query NStack for the localization, cache it and use that
  /// 4. Fallback to bundled localizations from last build
  Future<void> changeLocalization(Locale locale) async {
    try {
      clientLocale = locale;

      // Direct locale match
      final localLanguage =
          LocalizationRepository().getLocalizeIndexByLocale(locale);

      final prefs = await SharedPreferences.getInstance();
      final prefsKey = 'nstack_lang_${localLanguage.language!.locale}';

      final cachedLocalization = prefs.getString(prefsKey);

      if (cachedLocalization != null) {
        final cachedResponse = json.decode(cachedLocalization);

        final languageResponse = LocalizationData.fromJson(cachedResponse);

        await _updateLocaleAndNotify(
          translationData: languageResponse.data,
          languageLocale: localLanguage.language!.locale!,
          locale: locale,
        );

        _log("Switched cached localization...");
      } else {
        try {
          final localizationResponse = await _repository
              .fetchLocalizationForLanguageId(localLanguage.id!);
          // Save in cache
          prefs.setString(prefsKey, localizationResponse);

          // Switch to the language
          final translationJson = LocalizationData.fromJson(
            jsonDecode(localizationResponse),
          );

          await _updateLocaleAndNotify(
            translationData: translationJson.data,
            languageLocale: localLanguage.language!.locale!,
            locale: locale,
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

  Future<bool> init() async {
    try {
      await _initClientLocale();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<String?> _initClientLocale() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(_prefsSelectedLocale)) {
      var languageTag = prefs.getString(_prefsSelectedLocale) ??
          clientLocale?.toLanguageTag() ??
          '';
      LocalizationRepository().overridePickedLanguage(languageTag);
      return languageTag;
    } else if (clientLocale != null) {
      return clientLocale!.toLanguageTag();
    }
    return null;
  }

  _log(String message) {
    if (isDebug) {
      print(message);
    }
  }

  Future<void> updateOnAppOpen(AppOpen appOpen) async {
    final prefs = await SharedPreferences.getInstance();

    // Find best fit
    final bestFitLanguage = appOpen.data.localize
        ?.where((localize) => localize.language!.isBestFit == true)
        .first;

    final nstackKey = 'nstack_lang_${bestFitLanguage?.language?.locale}';

    // Fetch from the server or use the cache?
    if (bestFitLanguage?.shouldUpdate == true ||
        !prefs.containsKey(nstackKey)) {
      // Fetch best fit language from the server
      _log(
        'NStack --> Fetching best fit language: ${bestFitLanguage!.language!.locale}',
      );

      final bestFitLanguageResponse =
          await _repository.fetchLocalizationForLanguage(
        bestFitLanguage,
      );
      final translationJson = LocalizationData.fromJson(
        jsonDecode(bestFitLanguageResponse),
      );

      LocalizationRepository().updateLocalization(
        translationJson.data,
        bestFitLanguage.language!.locale!,
      );

      // Update cache for key
      prefs.setString(nstackKey, bestFitLanguageResponse);
      // Update last_updated for next app open call
      prefs.setString(
        _prefsKeyLastUpdated,
        DateTime.now().toUtc().toIso8601String(),
      );
    } else {
      // Using best fit language from the cache
      if (prefs.containsKey(nstackKey)) {
        _log(
          'NStack --> Using cache for best fit language: ${bestFitLanguage?.language?.locale}',
        );
        final cachedResponse = json.decode(prefs.getString(nstackKey)!);
        final languageResponse = LocalizationData.fromJson(cachedResponse);
        LocalizationRepository().updateLocalization(
          languageResponse.data,
          bestFitLanguage!.language!.locale!,
        );
        // No cache, default values (this shouldn't happen, should_update should be true)
      } else {
        _log(
          'NStack --> WARNING: No cache found for best fit language: ${bestFitLanguage?.language?.locale}',
        );
        LocalizationRepository().switchBundledLocalization(
          bestFitLanguage!.language!.locale!,
        );
      }
    }
  }

  /// Gets Language tag from the shared preferences.
  Future<String?> getUserSelectedLanguageTag() async {
    final prefs = await SharedPreferences.getInstance();

    final languageTag = prefs.getString(_prefsSelectedLocale);

    if (languageTag != null) {
      _log("NStack --> User has overwritten device locale to: $languageTag");
      LocalizationRepository().overridePickedLanguage(languageTag);
    }

    return languageTag;
  }
}
