import 'package:data/models/localize_resource.dart';

abstract class CacheRepository {
  Future<LocalizeResource> setCurrentLocalizationResource(
    LocalizeResource localizationResource,
  );

  Future<LocalizeResource> getCurrentLocalizationResource();
}
