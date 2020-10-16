import 'package:nstack_api/entities/nstack_api_config.dart';
import 'package:get_it/get_it.dart';
import 'package:nstack_sdk/src/interactors/get_localized_section_key_interactor.dart';

final injector = GetIt.instance;

void init(NStackApiConfig config) {
  injector.registerSingleton<NStackApiConfig>(
    config,
  );

  injector.registerSingleton<GetLocalizedSectionKeyInteractor>(
    GetLocalizedSectionKeyInteractor(
      cacheRepository: injector(),
    ),
  );
}
