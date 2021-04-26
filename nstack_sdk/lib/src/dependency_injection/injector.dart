import 'package:get_it/get_it.dart';
import 'package:nstack_sdk/src/data/entities/nstack_config.dart';

final injector = GetIt.instance;

void init(NStackConfig config) {
  injector.registerSingleton<NStackConfig>(
    config,
  );

/*  injector.registerSingleton<GetLocalizedSectionKeyInteractor>(
    GetLocalizedSectionKeyInteractor(
      cacheRepository: injector(),
    ),
  );*/
}
