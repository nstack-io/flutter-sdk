import 'package:nstack_api/entities/language_list.dart';
import 'package:nstack_api/entities/localize_resource.dart';

abstract class CacheRepository {
  setCurrentLocalizationResource(
    LocalizeResource localizationResource,
  );

  LocalizeResource getCurrentLocalizationResource();

  setAvailableLanguages(LanguageList languages);

  LanguageList getAvailableLanguages();
}
