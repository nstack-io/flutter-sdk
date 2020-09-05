import 'package:data/entities/language_list.dart';
import 'package:data/entities/localize_resource.dart';

abstract class CacheRepository {
  setCurrentLocalizationResource(
    LocalizeResource localizationResource,
  );

  LocalizeResource getCurrentLocalizationResource();

  setAvailableLanguages(LanguageList languages);

  LanguageList getAvailableLanguages();
}
