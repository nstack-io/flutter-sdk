import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:nstack/models/language.dart';
import 'package:nstack/models/localize_index.dart';
import 'package:nstack/utils/log_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationRepository {
  // Factory
  static final LocalizationRepository _instance =
      LocalizationRepository._internal();

  factory LocalizationRepository() => _instance;

  LocalizationRepository._internal();

  // Internal state
  Map<String, dynamic>? _sectionsMap;
  late Map<String, String> _bundledTranslations;
  late List<Language> _availableLanguages;
  late List<LocalizeIndex> _availableLocalizeIndexes;
  late Language _pickedLanguage;

  Language get pickedLanguage => _pickedLanguage;

  List<Language> get availableLanguages => _availableLanguages;

  List<LocalizeIndex> get localizeIndexes => _availableLocalizeIndexes;

  String get checksum =>
      _sectionsMap.hashCode.toString() + pickedLanguage.id.toString();

  final _prefsKeyPersistedMap = 'nstack_persisted_sections_map';

  void setupLocalization(
    Map<String, String> bundledTranslations,
    List<LocalizeIndex> availableLanguages,
    String pickedLanguageLocale,
  ) {
    _bundledTranslations = bundledTranslations;
    _availableLocalizeIndexes = availableLanguages;
    _availableLanguages = availableLanguages.map((e) => e.language).toList();
    _pickedLanguage = _availableLanguages.firstWhere(
      (language) => language.locale == pickedLanguageLocale,
      orElse: () => _availableLanguages.firstWhere(
        (language) => language.isDefault,
      ),
    );

    _setupInternalMap();
  }

  void switchBundledLocalization(String bestFitLocale) {
    _pickedLanguage = _availableLanguages.firstWhere(
      (element) => element.locale == bestFitLocale,
      orElse: () => _pickedLanguage,
    );
    _setupInternalMap();
  }

  Future<void> updateLocalization(
    Map<String, dynamic> localizationJson,
    String bestFitLocale,
  ) {
    _pickedLanguage = _availableLanguages.firstWhere(
      (element) => element.locale == bestFitLocale,
      orElse: () => _pickedLanguage,
    );
    _sectionsMap = localizationJson;
    return _persistInternalMap();
  }

  void overridePickedLanguage(String locale) {
    _pickedLanguage = _availableLanguages.firstWhere(
      (element) => element.locale == locale,
      orElse: () => _pickedLanguage,
    );
  }

  Future<void> _setupInternalMap() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      final prefs = await SharedPreferences.getInstance();

      if (prefs.containsKey(_prefsKeyPersistedMap)) {
        _sectionsMap = json.decode(prefs.getString(_prefsKeyPersistedMap)!);
      } else {
        _sectionsMap =
            json.decode(_bundledTranslations[_pickedLanguage.locale]!)['data'];
      }
    } catch (e, s) {
      LogUtil.log(e);
      LogUtil.log(s);
    }
  }

  Future<void> _persistInternalMap() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      final prefs = await SharedPreferences.getInstance();
      var serializedMap = json.encode(_sectionsMap);
      await prefs.setString(_prefsKeyPersistedMap, serializedMap);
    } catch (e, s) {
      LogUtil.log(e);
      LogUtil.log(s);
    }
  }

  String getSectionKeyValue(
    String sectionKey,
    String textKey,
    String fallbackText,
  ) {
    try {
      return _sectionsMap?[sectionKey][textKey] ?? fallbackText;
    } catch (e, s) {
      LogUtil.log(e);
      LogUtil.log(s);
      return fallbackText;
    }
  }

  LocalizeIndex getLocalizeIndexByLocale(Locale locale) {
    return localizeIndexes.firstWhere(
      (element) {
        final localeTag = locale.toLanguageTag().toLowerCase();
        final language = element.language.locale.toLowerCase();

        return localeTag == language;
      },
      // Match language part of Locale
      orElse: () {
        return localizeIndexes.firstWhere(
          (element) {
            final localeTag =
                locale.toLanguageTag().toLowerCase().split('-')[0];
            final language =
                element.language.locale.toLowerCase().split('-')[0];

            return localeTag == language;
          },
        );
      },
    );
  }
}
