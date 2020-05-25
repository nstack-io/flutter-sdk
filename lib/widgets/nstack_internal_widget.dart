import 'package:flutter/widgets.dart';
import 'package:nstack/nstack.dart';

abstract class NStackWidgetInternal<T> extends InheritedWidget {
  final NStack<T> nstack;

  NStackWidgetInternal({this.nstack, Key key, @required Widget child})
      : assert(child != null),
        super(key: key, child: child);

  static NStack of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<NStackWidgetInternal>().nstack;

  @override
  bool updateShouldNotify(NStackWidgetInternal oldWidget) =>
      nstack != oldWidget.nstack;
}
