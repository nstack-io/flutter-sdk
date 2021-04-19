import 'package:flutter/material.dart';
import 'package:nstack_sdk/src/dependency_injection/injector.dart';
import 'package:nstack_sdk/src/interactors/post_app_open_interactor.dart';
import 'package:nstack_sdk/src/interactors/set_app_config_interactor.dart';
import 'package:nstack_sdk/src/interactors/set_guid_interactor.dart';
import 'package:nstack_sdk/src/interactors/set_runtime_config_interactor.dart';

// TODO
class AppOpen extends StatefulWidget {
  @override
  _AppOpenState createState() => _AppOpenState();
}

class _AppOpenState extends State<AppOpen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// TODO: Refactor: Move
Future<AppOpenResult> postAppOpen(Locale locale) async {
  WidgetsFlutterBinding.ensureInitialized();
  await injector.get<SetGuidInteractor>().execute();
  await injector.get<SetRuntimeConfigInteractor>().execute();
  await injector.get<SetAppConfigInteractor>().execute();
  return await injector
      .get<PostAppOpenInteractor>()
      .execute(locale)
      .then((value) => AppOpenResult.success)
      .catchError((error) => AppOpenResult.failed);
}

// TODO Replace with some generic result
// TODO Refactor: Move
enum AppOpenResult { success, failed }
