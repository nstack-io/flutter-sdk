import 'dart:ui';

import 'package:nstack_api/entities/app_open_request_body.dart';
import 'package:nstack_api/entities/localize_index_list.dart';
import 'package:nstack_api/entities/timestamp.dart';
import 'package:nstack_api/nstack_api.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';
import 'package:nstack_sdk/src/interactors/update_localize_resources_interactor.dart';
import 'package:nstack_sdk/src/repository/cache_repository.dart';
import 'package:nstack_sdk/src/repository/local_repository.dart';

class PostAppOpenInteractor extends FutureInputInteractor<Locale, void> {
  final NStackAPI api;
  final LocalRepository localRepository;
  final CacheRepository cacheRepository;
  final UpdateLocalizeResourcesInteractor updateLocalizeResourcesInteractor;

  PostAppOpenInteractor({
    required this.api,
    required this.localRepository,
    required this.cacheRepository,
    required this.updateLocalizeResourcesInteractor,
  });

  @override
  Future<void> execute(Locale locale) async {
    final appOpen = await api.postAppOpen(
      body: await appOpenRequestBody,
    );

    // Update all local resources
    updateLocalizeResourcesInteractor.execute(
      LocalizeIndexList(
        data: appOpen.data!.localize,
      ),
    );

    // Update timestamp
    localRepository.setLastAppOpenTimestamp(
      Timestamp(
        time: DateTime.now(),
      ),
    );
  }

  Future<AppOpenRequestBody> get appOpenRequestBody async {
    final runtimeConfig = await localRepository.getRuntimeConfig();
    final appConfig = await localRepository.getAppConfig();
    final guid = await localRepository.getGuid();
    final timestamp = await localRepository.getLastAppOpenTimeStamp();
    return AppOpenRequestBody(
      platform: runtimeConfig.platformName,
      guid: guid,
      lastUpdated: timestamp?.time ?? DateTime.utc(1980, 1, 1),
      oldVersion: appConfig.previousVersion,
      version: appConfig.version,
    );
  }
}
