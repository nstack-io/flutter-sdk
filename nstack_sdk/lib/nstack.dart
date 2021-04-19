import 'package:flutter/widgets.dart';
import 'package:nstack_sdk/src/data/entities/nstack_config.dart';
import 'package:nstack_sdk/src/injection/injector.dart' as injector;
import 'package:nstack_sdk/src/interactors/post_app_open_interactor.dart';
import 'package:nstack_sdk/src/interactors/set_app_config_interactor.dart';
import 'package:nstack_sdk/src/interactors/set_guid_interactor.dart';
import 'package:nstack_sdk/src/interactors/set_runtime_config_interactor.dart';

class NStack {
  final NStackConfig config;

  NStack({
    required this.config,
    // TODO: Remove
    required Locale locale,
  }) {
    injector.init(config);

    // TODO: InitLocalizationInteractor
    // Check if this is the very first app launch
    // LocalRepository.getHasBundledLocalizeResources() == false

    // If so, call LocalRepository.setLocalization() for every
    // LocalizeResource in bundledLocalizeResourceList

    // Update our flag from earlier
    // LocalRepository.setHasBundledLocalizeResources(true)

    // Based on locale call
    // CacheRepository.setCurrentLocalizationResource()

    // We should ditch our nstack_builder in favour of a
    // dedicated Dart CLI. This CLI can then bundle translations under an app's
    // assets directory. We then only read from this directory if needed -
    // avoiding huge memory waste on every app start.

    // See https://nstack-io.github.io/docs/docs/app-open.html
    // We need to run all of this blocking e.g. SplashScreen
  }

  Future<AppOpenResult> postAppOpen(Locale locale) async {
    WidgetsFlutterBinding.ensureInitialized();
    await injector.injector.get<SetGuidInteractor>().execute();
    await injector.injector.get<SetRuntimeConfigInteractor>().execute();
    await injector.injector.get<SetAppConfigInteractor>().execute();
    return await injector.injector.get<PostAppOpenInteractor>()
        .execute(locale)
        .then((value) => AppOpenResult.success)
        .catchError((error) => AppOpenResult.failed);
  }
}

// TODO: Replace with some generic result
enum AppOpenResult { success, failed }
