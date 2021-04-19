import 'package:flutter/widgets.dart';
import 'package:nstack_sdk/src/dependency_injection/injector.dart'
    as dependencies;
import 'package:nstack_sdk/src/interactors/get_nstack_config_interactor.dart';

// TODO
class NStack extends StatefulWidget {
  final Widget child;

  const NStack({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _NStackState createState() => _NStackState();
}

class _NStackState extends State<NStack> {
  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
    );
  }
}

// TODO Refactor: Move
void init() async {
  final config = await GetNStackConfigInteractor().execute();
  dependencies.init(config);
  print('NStack initialized:\n$config');
}
