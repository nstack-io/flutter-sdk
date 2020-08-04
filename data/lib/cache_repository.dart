import 'package:data/entities/localize_resource.dart';

abstract class CacheRepository {
  Future<LocalizeResource> setCurrentLocalizationResource(
    LocalizeResource localizationResource,
  );

  Future<LocalizeResource> getCurrentLocalizationResource();
}
