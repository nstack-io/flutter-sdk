import 'package:flutter/widgets.dart';
import 'package:nstack/widgets/nstack_internal_widget.dart';

class NStackInitWidget extends StatefulWidget {
  final Widget child;

  const NStackInitWidget({Key key, Widget child})
      : child = child,
        super(key: key);

  @override
  _NStackInitState createState() => _NStackInitState();
}

class _NStackInitState extends State<NStackInitWidget> {
  static bool _initialized = false;

  void setupNStack(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final nstack = NStackWidgetInternal.of(context);
    nstack.appOpen(locale);
  }

  @override
  Widget build(BuildContext context) {
    if (!_initialized) {
      setupNStack(context);
      _initialized = true;
    }
    return widget.child;
  }
}
