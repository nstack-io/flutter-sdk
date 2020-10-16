import 'package:nstack_api/entities/localize_index_list.dart';
import 'package:nstack_api/nstack_api.dart';
import 'package:meta/meta.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';
import 'package:nstack_sdk/src/repository/cache_repository.dart';
import 'package:nstack_sdk/src/repository/local_repository.dart';

class UpdateLocalizeResourcesInteractor extends FutureInteractor<void> {
  final NStackAPI api;
  final LocalRepository localRepository;
  final CacheRepository cacheRepository;

  UpdateLocalizeResourcesInteractor({
    @required this.api,
    @required this.localRepository,
    @required this.cacheRepository,
  });

  @override
  Future<void> execute({
    LocalizeIndexList localizeIndexList,
  }) async {
    localizeIndexList.data.forEach((item) {
      if (item.shouldUpdate) {
        api.getLocalizationResource(item.id);
        // TODO: localRepository.setLocalization()
        // TODO: cacheRepository.setLocalization()
        // TODO: cacheRepository.setCurrentLocalizationResource()
      }
    });
  }
}
