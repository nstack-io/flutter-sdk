import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nstack_sdk/src/dependency_injection/injector.dart'
    as dependencies;
import 'package:nstack_sdk/src/interactors/get_nstack_config_interactor.dart';

/// A widget for initializing NStack.
class NStack extends StatefulWidget {
  /// A widget to display after NStack initialization.
  /// Usually this is your app widget, e.g. MaterialApp.
  final Widget child;

  /// A widget to display during NStack initialization.
  /// Usually this is a splash-screen.
  final Widget? progressIndicator;

  // TODO: Maybe add a Future<void> to notify when initialization is done. After awaiting the Future switch from [progressIndicator] to [widget].
  // This would allow developers to initialize other dependencies, e.g. Firebase, on the same splash-screen.

  const NStack({
    Key? key,
    required this.child,
    this.progressIndicator,
  }) : super(key: key);

  @override
  _NStackState createState() => _NStackState();
}

class _NStackState extends State<NStack> {
  bool isInitialized = false;

  @override
  void initState() {
    _initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: AnimatedSwitcher?
    if (isInitialized) {
      return widget.child;
    } else {
      return widget.progressIndicator ??
          Center(child: CircularProgressIndicator());
    }
  }
}

// TODO Refactor: Move
void _initialize() async {
  final config = await GetNStackConfigInteractor().execute();
  dependencies.init(config);
  print('NStack initialized:\n$config');

  // TODO: InitializeNStackInteractor.execute()
}
