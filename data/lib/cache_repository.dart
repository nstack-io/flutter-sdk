import 'package:data/entities/language_list.dart';
import 'package:data/entities/localize_resource.dart';
import 'package:data/entities/localize_resource_list.dart';

abstract class CacheRepository {
  setLocalization(LocalizeResourceList localization);

  LocalizeResourceList getLocalization();

  setFallbackLocalization(LocalizeResourceList localization);

  LocalizeResourceList getFallbackLocalization();

  setCurrentLocalizationResource(
    LocalizeResource localizationResource,
  );

  LocalizeResource getCurrentLocalizationResource();

  setCurrentFallbackLocalizationResource(
    LocalizeResource localizationResource,
  );

  LocalizeResource getCurrentFallbackLocalizationResource();

  setAvailableLanguages(LanguageList languages);

  LanguageList getAvailableLanguages();
}
