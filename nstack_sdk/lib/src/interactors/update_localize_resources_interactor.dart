import 'package:nstack_api/entities/localize_index_list.dart';
import 'package:nstack_api/entities/nstack_api_headers.dart';
import 'package:nstack_api/nstack_api.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';
import 'package:nstack_sdk/src/repository/cache_repository.dart';
import 'package:nstack_sdk/src/repository/local_repository.dart';

class UpdateLocalizeResourcesInteractor
    extends FutureInputInteractor<LocalizeIndexList, void> {
  final NStackAPI api;
  final NStackApiHeaders headers;
  final LocalRepository localRepository;
  final CacheRepository cacheRepository;

  UpdateLocalizeResourcesInteractor({
    required this.api,
    required this.headers,
    required this.localRepository,
    required this.cacheRepository,
  });

  @override
  Future<void> execute(
    LocalizeIndexList localizeIndexList,
  ) async {
    localizeIndexList.data?.forEach((item) {
      if (item.shouldUpdate!) {
        api.getLocalizeResource(headers: headers, id: item.id!);
        // TODO: localRepository.setLocalization()
        // TODO: cacheRepository.setLocalization()
        // TODO: cacheRepository.setCurrentLocalizationResource()
      }
    });
  }
}
