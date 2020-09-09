import 'package:api/entities/language_list.dart';
import 'package:api/entities/localize_resource.dart';

abstract class CacheRepository {
  setCurrentLocalizationResource(
    LocalizeResource localizationResource,
  );

  LocalizeResource getCurrentLocalizationResource();

  setAvailableLanguages(LanguageList languages);

  LanguageList getAvailableLanguages();
}
