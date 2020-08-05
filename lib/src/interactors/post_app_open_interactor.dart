import 'dart:ui';

import 'package:data/cache_repository.dart';
import 'package:data/entities/localize_index_list.dart';
import 'package:data/entities/nstack_app_open_data.dart';
import 'package:data/entities/timestamp.dart';
import 'package:data/local_repository.dart';
import 'package:data/remote_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:nstack/src/interactors/interactor.dart';
import 'package:nstack/src/interactors/update_localize_resources_interactor.dart';

class PostAppOpenInteractor extends FutureInteractor<void> {
  final RemoteRepository remoteRepository;
  final LocalRepository localRepository;
  final CacheRepository cacheRepository;
  final UpdateLocalizeResourcesInteractor updateLocalizeResourcesInteractor;

  PostAppOpenInteractor({
    @required this.remoteRepository,
    @required this.localRepository,
    @required this.cacheRepository,
    @required this.updateLocalizeResourcesInteractor,
  });

  @override
  Future<void> execute({@required Locale locale}) async {
    final appOpen = await remoteRepository.postAppOpen(
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
