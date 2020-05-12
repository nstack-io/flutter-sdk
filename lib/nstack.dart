import 'package:nstack/nstack_config.dart';

import 'language.dart';

class NStack<T> {
  final List<Language> availableLanguages;
  final NStackConfig config;
  final Map<String, String> bundledTranslations;
  final T localization;

  NStack({
    this.config,
    this.availableLanguages,
    this.localization,
    this.bundledTranslations
  });

  Language defaultLanguage() {
    return availableLanguages.where((element) => element.isDefault).first;
  }

  Language bestFitLanguage() {
    return availableLanguages.where((element) => element.isBestFit).first;
  }
}
