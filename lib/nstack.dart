import 'package:api/entities/localize_resource_list.dart';
import 'package:api/entities/nstack_config.dart';
import 'package:flutter/widgets.dart';
import 'package:nstack/src/injection/injector.dart' as Injector;
import 'package:nstack/src/injection/injector.dart';
import 'package:nstack/src/interactors/post_app_open_interactor.dart';
import 'package:nstack/src/interactors/set_app_config_interactor.dart';
import 'package:nstack/src/interactors/set_guid_interactor.dart';
import 'package:nstack/src/interactors/set_runtime_config_interactor.dart';

class NStack {
  final NStackConfig config;

  NStack({
    @required this.config,
    // TODO: Remove
    // See Dart CLI comment below.
    @required LocalizeResourceList bundledLocalizeResourceList,
    @required Locale locale,
  }) {
    Injector.init(config);

    // TODO: InitLocalizationInteractor
    // Check if this is the very first app launch
    // LocalRepository.getHasBundledLocalizeResources() == false

    // If so, call LocalRepository.setLocalization() for every
    // LocalizeResource in bundledLocalizeResourceList

    // Update our flag from earlier
    // LocalRepository.setHasBundledLocalizeResources(true)

    // Based on locale call
    // CacheRepository.setCurrentLocalizationResource()

    // Free memory
    bundledLocalizeResourceList = null;
    // This is not ideal. We should ditch our nstack_builder in favour of a
    // dedicated Dart CLI. This CLI can then bundle translations under an app's
    // assets directory. We then only read from this directory if needed -
    // avoiding huge memory waste on every app start.

    // See https://nstack-io.github.io/docs/docs/app-open.html
    // We need to run all of this blocking e.g. SplashScreen
  }

  Future<AppOpenResult> postAppOpen(Locale locale) async {
    WidgetsFlutterBinding.ensureInitialized();
    await injector<SetGuidInteractor>().execute();
    await injector<SetRuntimeConfigInteractor>().execute();
    await injector<SetAppConfigInteractor>().execute();
    return await injector<PostAppOpenInteractor>()
        .execute(locale: locale)
        .then((value) => AppOpenResult.success)
        .catchError((error) => AppOpenResult.failed);
  }
}

// TODO: Replace with some generic result
enum AppOpenResult { success, failed }
