import 'package:nstack_sdk/src/data/repository/cache_repository.dart';
import 'package:nstack_sdk/src/extensions/localization_resource_extension.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';

class GetLocalizedSectionKeyInteractor extends Interactor<String> {
  final CacheRepository cacheRepository;

  GetLocalizedSectionKeyInteractor({
    required this.cacheRepository,
  });

  @override
  String execute({
    String? section,
    String? key,
  }) {
    final resource = cacheRepository.getLocalizeResource();
    final result = resource.getLocalizedSectionKey(section, key);
    if (result == null) {
      throw AssertionError('''
      Key $key in section $section not found. This should not happen!
      Run nstack_cli init or update to fix your nstack configuration.
      ''');
    }
    return result;
  }
}
