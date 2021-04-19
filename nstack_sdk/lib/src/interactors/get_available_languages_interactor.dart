import 'package:nstack_api/entities/localize_language.dart';
import 'package:nstack_api/entities/nstack_api_headers.dart';
import 'package:nstack_api/entities/nstack_target.dart';
import 'package:nstack_api/nstack_api.dart';
import 'package:nstack_sdk/src/data/entities/data_source_strategy.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';
import 'package:nstack_sdk/src/data/repository/cache_repository.dart';
import 'package:nstack_sdk/src/data/repository/local_repository.dart';

class GetAvailableLanguagesInteractor
    extends FutureInputInteractor<DataSourceStrategy, List<LocalizeLanguage>?> {
  final NStackAPI api;
  final NStackApiHeaders headers;
  final LocalRepository localRepository;
  final CacheRepository cacheRepository;

  GetAvailableLanguagesInteractor({
    required this.api,
    required this.headers,
    required this.localRepository,
    required this.cacheRepository,
  });

  @override
  Future<List<LocalizeLanguage>?> execute(
    DataSourceStrategy strategy,
  ) async {
    switch (strategy) {
      case DataSourceStrategy.remote:
        final result = await api.getLocalizeLanguageList(
          target: NStackTarget.mobile,
          headers: headers,
        );
        await localRepository.setLanguages(result);
        return result.data;
      case DataSourceStrategy.local:
        final result = await localRepository.getLanguages();
        return result.data;
      case DataSourceStrategy.cache:
        throw ArgumentError('Unsupported DataSourceStrategy $strategy.');
    }
  }
}
