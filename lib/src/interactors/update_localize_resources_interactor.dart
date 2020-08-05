import 'package:data/cache_repository.dart';
import 'package:data/entities/localize_index_list.dart';
import 'package:data/local_repository.dart';
import 'package:data/remote_repository.dart';
import 'package:meta/meta.dart';
import 'package:nstack/src/interactors/interactor.dart';

class UpdateLocalizeResourcesInteractor extends FutureInteractor<void> {
  final RemoteRepository remoteRepository;
  final LocalRepository localRepository;
  final CacheRepository cacheRepository;

  UpdateLocalizeResourcesInteractor({
    @required this.remoteRepository,
    @required this.localRepository,
    @required this.cacheRepository,
  });

  @override
  Future<void> execute({
    LocalizeIndexList localizeIndexList,
  }) async {
    localizeIndexList.data.forEach((item) {
      if (item.shouldUpdate) {
        remoteRepository.getLocalizationResource(item.id);
        // TODO: localRepository.setLocalization()
        // TODO: cacheRepository.setLocalization()
        // TODO: cacheRepository.setCurrentLocalizationResource()
      }
    });
  }
}
