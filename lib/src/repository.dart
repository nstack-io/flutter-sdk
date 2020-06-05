import '../models/language.dart';
import '../models/section_key.dart';
import 'dart:convert';

class Repository {
  // Factory
  static final Repository _instance = Repository._internal();

  factory Repository() => _instance;

  Repository._internal();

  // Internal state
  Map<String, dynamic> _sectionsMap;
  Map<String, String> _bundledTranslations;
  List<Language> _availableLanguages;
  Language _pickedLanguage;

  void setupLocalization(Map<String, String> bundledTranslations,
      List<Language> availableLanguages, String pickedLanguageLocale) {
    this._bundledTranslations = bundledTranslations;
    this._availableLanguages = availableLanguages;
    this._pickedLanguage = availableLanguages.firstWhere(
      (element) => element.locale == pickedLanguageLocale,
      orElse: () =>
          availableLanguages.firstWhere((element) => element.isDefault),
    );

    _setupInternalMap();
  }

  void updateLocalization(
      Map<String, dynamic> localizationJson, String bestFitLocale) {
    this._pickedLanguage = _availableLanguages.firstWhere(
      (element) => element.locale == bestFitLocale,
      orElse: () => this._pickedLanguage,
    );
    _sectionsMap = localizationJson;
  }

  _setupInternalMap() {
    try {
      _sectionsMap =
          json.decode(_bundledTranslations[_pickedLanguage.locale])['data'];
    } catch (err) {
      print('_setupInternalMap() failed --> ${err.toString()}');
    }
  }

  String getSectionKeyValue(SectionKey sectionKey) =>
      _sectionsMap[sectionKey.sectionName][sectionKey.keyName] ??
      sectionKey.fallbackValue;
}
