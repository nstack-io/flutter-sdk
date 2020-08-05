import 'package:data/cache_repository.dart';
import 'package:meta/meta.dart';
import 'package:nstack/src/extensions/localization_resource_extension.dart';
import 'package:nstack/src/interactors/interactor.dart';

class GetLocalizedSectionKeyInteractor extends Interactor<String> {
  final CacheRepository cacheRepository;

  GetLocalizedSectionKeyInteractor({
    @required this.cacheRepository,
  });

  @override
  String execute({
    String section,
    String key,
  }) {
    try {
      final resource = cacheRepository.getCurrentLocalizationResource();
      return resource.getLocalizedSectionKey(section, key);
    } catch (error) {
      final resource = cacheRepository.getCurrentFallbackLocalizationResource();
      return resource.getLocalizedSectionKey(section, key);
    }
  }
}
