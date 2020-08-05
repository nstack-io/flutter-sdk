import 'package:data/cache_repository.dart';
import 'package:data/entities/data_source_strategy.dart';
import 'package:data/entities/language.dart';
import 'package:data/local_repository.dart';
import 'package:data/remote_repository.dart';
import 'package:meta/meta.dart';
import 'package:nstack/src/interactors/interactor.dart';

class GetAvailableLanguagesInteractor extends FutureInteractor<List<Language>> {
  final RemoteRepository remoteRepository;
  final LocalRepository localRepository;
  final CacheRepository cacheRepository;

  GetAvailableLanguagesInteractor({
    @required this.remoteRepository,
    @required this.localRepository,
    @required this.cacheRepository,
  });

  @override
  Future<List<Language>> execute({
    DataSourceStrategy strategy,
  }) async {
    switch (strategy) {
      case DataSourceStrategy.remote:
        final result = await remoteRepository.getAvailableLanguages();
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
