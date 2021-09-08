import 'dart:convert';

import 'package:nstack/models/language.dart';
import 'package:nstack/models/localize_index.dart';

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
      _sectionsMap.hashCode.toString() + this.pickedLanguage.id.toString();

  void setupLocalization(
    Map<String, String> bundledTranslations,
    List<LocalizeIndex> availableLanguages,
    String pickedLanguageLocale,
  ) {
    this._bundledTranslations = bundledTranslations;
    this._availableLocalizeIndexes = availableLanguages;
    this._availableLanguages =
        availableLanguages.map((e) => e.language!).toList();
    this._pickedLanguage = this._availableLanguages.firstWhere(
          (language) => language.locale == pickedLanguageLocale,
          orElse: () => this._availableLanguages.firstWhere(
                (language) => language.isDefault,
              ),
        );

    _setupInternalMap();
  }

  void switchBundledLocalization(String bestFitLocale) {
    this._pickedLanguage = _availableLanguages.firstWhere(
      (element) => element.locale == bestFitLocale,
      orElse: () => this._pickedLanguage,
    );
    _setupInternalMap();
  }

  void updateLocalization(
    Map<String, dynamic> localizationJson,
    String bestFitLocale,
  ) {
    this._pickedLanguage = _availableLanguages.firstWhere(
      (element) => element.locale == bestFitLocale,
      orElse: () => this._pickedLanguage,
    );
    _sectionsMap = localizationJson;
  }

  void _setupInternalMap() {
    try {
      _sectionsMap =
          json.decode(_bundledTranslations[_pickedLanguage.locale]!)['data'];
    } catch (e, s) {
      print(e);
      print(s);
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
      print(e);
      print(s);
      return fallbackText;
    }
  }
}
