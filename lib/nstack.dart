import 'package:data/entities/language.dart';
import 'package:data/entities/nstack_config.dart';
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
    // TODO: Remove. Bundled translations provide language info.
    @required List<Language> availableLanguages,
    @required Map<String, String> bundledTranslations,
    @required Locale locale,
  }) {
    Injector.init(config);
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
