import 'package:data/entities/nstack_config.dart';
import 'package:get_it/get_it.dart';
import 'package:nstack/src/interactors/get_localized_section_key_interactor.dart';

final injector = GetIt.instance;

void init(NStackConfig config) {
  injector.registerSingleton<NStackConfig>(
    config,
  );

  injector.registerSingleton<GetLocalizedSectionKeyInteractor>(
    GetLocalizedSectionKeyInteractor(),
  );
}
