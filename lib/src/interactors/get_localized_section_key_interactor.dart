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
    final resource = cacheRepository.getCurrentLocalizationResource();
    if (resource == null) throw AssertionError('''
        LocalizeResource not found. This should not happen!
        Please report this issue to NStack library maintainers.
        ''');
    final result = resource.getLocalizedSectionKey(section, key);
    if (result == null) throw AssertionError('''
      Key $key in section $section not found. This should not happen!
      Run NStack's build task to update your bundled localization.
      ''');
    return result;
  }
}
