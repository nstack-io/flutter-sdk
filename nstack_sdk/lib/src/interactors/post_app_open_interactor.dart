import 'dart:ui';

import 'package:nstack_api/entities/localize_index_list.dart';
import 'package:nstack_api/entities/nstack_app_open_data.dart';
import 'package:nstack_api/entities/timestamp.dart';
import 'package:nstack_api/api.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';
import 'package:nstack_sdk/src/interactors/update_localize_resources_interactor.dart';
import 'package:nstack_sdk/src/repository/cache_repository.dart';
import 'package:nstack_sdk/src/repository/local_repository.dart';


class PostAppOpenInteractor extends FutureInteractor<void> {
  final NStackAPI api;
  final LocalRepository localRepository;
  final CacheRepository cacheRepository;
  final UpdateLocalizeResourcesInteractor updateLocalizeResourcesInteractor;

  PostAppOpenInteractor({
    @required this.api,
    @required this.localRepository,
    @required this.cacheRepository,
    @required this.updateLocalizeResourcesInteractor,
  });

  @override
  Future<void> execute({@required Locale locale}) async {
    final appOpen = await api.postAppOpen(
      acceptHeader: locale.toLanguageTag(),
      appOpenData: await appOpenData,
      devMode: kDebugMode,
      testMode: false,
    );

    // Update all local resources
    updateLocalizeResourcesInteractor.execute(
      localizeIndexList: LocalizeIndexList(
        data: appOpen.data.localize,
      ),
    );

    // Update timestamp
    localRepository.setLastAppOpenTimestamp(
      Timestamp(
        time: DateTime.now(),
      ),
    );
  }

  Future<NStackAppOpenData> get appOpenData async {
    final runtimeConfig = await localRepository.getRuntimeConfig();
    final appConfig = await localRepository.getAppConfig();
    final guid = await localRepository.getGuid();
    final timestamp = await localRepository.getLastAppOpenTimeStamp();
    return NStackAppOpenData(
      platform: runtimeConfig.platformName,
      guid: guid,
      lastUpdated: timestamp?.time ?? DateTime.utc(1980, 1, 1),
      oldVersion: appConfig.previousVersion,
      version: appConfig.version,
    );
  }
}
