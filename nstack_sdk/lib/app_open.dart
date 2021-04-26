import 'package:flutter/material.dart';
import 'package:nstack_sdk/src/dependency_injection/injector.dart';
import 'package:nstack_sdk/src/interactors/post_app_open_interactor.dart';
import 'package:nstack_sdk/src/interactors/set_app_config_interactor.dart';
import 'package:nstack_sdk/src/interactors/set_guid_interactor.dart';
import 'package:nstack_sdk/src/interactors/set_runtime_config_interactor.dart';

/// A widget for calling NStack AppOpen.
/// - Obtains latest localization based on current run-time-environment.
class AppOpen extends StatefulWidget {
  final Widget child;

  const AppOpen({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _AppOpenState createState() => _AppOpenState();
}

class _AppOpenState extends State<AppOpen> {
  @override
  void initState() {
    _postAppOpen(Localizations.localeOf(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

// TODO: Refactor: Move
Future<void> _postAppOpen(Locale locale) async {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO: Check if we should execute some of those in [NStack] instead
  await injector.get<SetGuidInteractor>().execute();
  await injector.get<SetRuntimeConfigInteractor>().execute();
  await injector.get<SetAppConfigInteractor>().execute();
  await injector.get<PostAppOpenInteractor>().execute(locale);
}
