import 'package:nstack_api/entities/localize_index_list.dart';
import 'package:nstack_api/entities/nstack_api_headers.dart';
import 'package:nstack_api/nstack_api.dart';
import 'package:nstack_sdk/src/data/repository/cache_repository.dart';
import 'package:nstack_sdk/src/data/repository/local_repository.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';

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
    final bestFitLocalizeIndex = localizeIndexList.data?.firstWhere((element) {
      return element.language?.isBestFit == true;
    });
    // TODO: Fall back to default if no best fit is available
    final bestFitLocalizeResource = await api.getLocalizeResource(
      headers: headers,
      id: bestFitLocalizeIndex!.id!,
    );
    await localRepository.setLocalizeResource(bestFitLocalizeResource);
    cacheRepository.setLocalizeResource(bestFitLocalizeResource);
  }
}
