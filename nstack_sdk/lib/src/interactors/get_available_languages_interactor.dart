import 'package:nstack_api/entities/data_source_strategy.dart';
import 'package:nstack_api/entities/language.dart';
import 'package:nstack_api/nstack_api.dart';
import 'package:meta/meta.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';
import 'package:nstack_sdk/src/repository/cache_repository.dart';
import 'package:nstack_sdk/src/repository/local_repository.dart';

class GetAvailableLanguagesInteractor extends FutureInteractor<List<Language>> {
  final NStackAPI api;
  final LocalRepository localRepository;
  final CacheRepository cacheRepository;

  GetAvailableLanguagesInteractor({
    @required this.api,
    @required this.localRepository,
    @required this.cacheRepository,
  });

  @override
  Future<List<Language>> execute({
    DataSourceStrategy strategy,
  }) async {
    switch (strategy) {
      case DataSourceStrategy.remote:
        final result = await api.getAvailableLanguages();
        cacheRepository.setAvailableLanguages(result);
        localRepository.setAvailableLanguages(result);
        return result.data;
      case DataSourceStrategy.local:
        final result = await localRepository.getAvailableLanguages();
        return result.data;
      case DataSourceStrategy.cache:
        final result = cacheRepository.getAvailableLanguages();
        return result.data;
    }
    throw ArgumentError('Unknown DataSourceStrategy.');
  }
}
