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
      if (resource == null) throw AssertionError('''
        LocalizeResource not found. This should not happen!
        Current LocalizeResource must be available in cache.
        ''');
      final result = resource.getLocalizedSectionKey(section, key);
      if (result == null) throw AssertionError('Key not found.');
      return result;
    } catch (error) {
      final resource = cacheRepository.getCurrentFallbackLocalizationResource();
      if (resource == null) throw AssertionError('''
        LocalizeResource not found. This should not happen!
        Current fallback (bundled) LocalizeResource must be available in cache.
        ''');
      final result = resource.getLocalizedSectionKey(section, key);
      if (result == null) throw AssertionError('''
        Key not found. This should not happen!
        Fallback (bundled) localization resource must contain all keys.
        ''');
      return result;
    }
  }
}
