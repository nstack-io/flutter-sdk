import 'package:nstack_api/entities/localize_language.dart';
import 'package:nstack_api/nstack_api.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';
import 'package:nstack_sdk/src/other/data_source_strategy.dart';
import 'package:nstack_sdk/src/repository/cache_repository.dart';
import 'package:nstack_sdk/src/repository/local_repository.dart';

class GetAvailableLanguagesInteractor extends InputInteractor<
    DataSourceStrategy, Future<List<LocalizeLanguage>>> {
  final NStackAPI api;
  final LocalRepository localRepository;
  final CacheRepository cacheRepository;

  GetAvailableLanguagesInteractor({
    required this.api,
    required this.localRepository,
    required this.cacheRepository,
  });

  @override
  Future<List<LocalizeLanguage>> execute(
    DataSourceStrategy strategy,
  ) async {
    switch (strategy) {
      case DataSourceStrategy.remote:
        final result = await api.getLocalizeLanguageList();
        localRepository.setLanguages(result);
        return result.data!;
      case DataSourceStrategy.local:
        final result = await localRepository.getLanguages();
        return result.data!;
      case DataSourceStrategy.cache:
        throw ArgumentError('Unsupported DataSourceStrategy $strategy.');
    }
    throw ArgumentError('Unknown DataSourceStrategy.');
  }
}
