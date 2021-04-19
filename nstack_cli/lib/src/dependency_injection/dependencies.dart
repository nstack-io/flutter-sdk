import 'package:nstack_api/entities/n_meta.dart';
import 'package:nstack_api/http_nstack_api.dart';
import 'package:nstack_api/nstack_api.dart';

import 'injector.dart';

class Dependencies {
  static Future<void> inject() async {
    injector.registerLazySingleton<NStackAPI>(() => HttpNStackApi());
    injector.registerLazySingleton<NMeta>(() => NMeta(
          platform: 'android',
          environment: 'local',
          appVersion: '1.0',
          osVersion: '1.0',
          device: 'nstack_cli',
        ));
  }
}
