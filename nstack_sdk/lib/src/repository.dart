import 'dart:convert';

import 'package:nstack_api/entities/localize_language.dart';

// TODO: Deprecate
@Deprecated('Use package:nstack_api/local_repository.dart and cache_repository.dart')
class LocalizationRepository {
  // Factory
  static final LocalizationRepository _instance =
      LocalizationRepository._internal();

  factory LocalizationRepository() => _instance;

  LocalizationRepository._internal();

  // Internal state
  Map<String, dynamic>? _sectionsMap;
  late Map<String, String> _bundledTranslations;
  late List<LocalizeLanguage?> _availableLanguages;
  LocalizeLanguage? _pickedLanguage;

  void setupLocalization(
    Map<String, String> bundledTranslations,
    List<LocalizeLanguage?> availableLanguages,
    String pickedLanguageLocale,
  ) {
    _bundledTranslations = bundledTranslations;
    _availableLanguages = availableLanguages;
    _pickedLanguage = availableLanguages.firstWhere(
      (language) => language!.locale == pickedLanguageLocale,
      orElse: () => availableLanguages.firstWhere(
        (language) => language!.isDefault!,
      ),
    );

    _setupInternalMap();
  }

  void updateLocalization(
    Map<String, dynamic> localizationJson,
    String bestFitLocale,
  ) {
    _pickedLanguage = _availableLanguages.firstWhere(
      (element) => element!.locale == bestFitLocale,
      orElse: () => _pickedLanguage,
    );
    _sectionsMap = localizationJson;
  }

  void _setupInternalMap() {
    try {
      _sectionsMap =
          json.decode(_bundledTranslations[_pickedLanguage!.locale!]!)['data'];
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
      return _sectionsMap![sectionKey][textKey] ?? fallbackText;
    } catch (e, s) {
      print(e);
      print(s);
      return fallbackText;
    }
  }
}
