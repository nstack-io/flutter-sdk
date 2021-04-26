import 'package:nstack_sdk/src/data/entities/nstack_config.dart';
import 'package:nstack_sdk/src/data/repository/cache_repository.dart';
import 'package:nstack_sdk/src/data/repository/local_repository.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';

class InitializeNStackInteractor extends Interactor<void> {
  final NStackConfig config;
  final LocalRepository localRepository;
  final CacheRepository cacheRepository;

  InitializeNStackInteractor({
    required this.config,
    required this.localRepository,
    required this.cacheRepository,
  });

  @override
  void execute() {
    // TODO
    // 1. If we already have a LocalRepository.getLocalizeResource() write it into CacheRepository.setLocalizeResource()
    // 2. Otherwise get /assets/default_localization.json and write it into LocalRepository.setLocalizeResource() and CacheRepository.setLocalizeResource()
  }
}
