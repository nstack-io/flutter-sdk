import '../config.dart';
import '../interactor.dart';
import 'build_command.dart';

class BuildInteractor implements FutureInteractor<void> {
  @override
  Future<void> execute({BuildCommand command}) async {
    final config = getConfig();

    // TODO: Fetch Localization
    // Dependency on NStack :data library

    // TODO: Generate fallback localization files under
    // Path: assets/nstack/de_DE.json

    // TODO: Generate NStack instance
    // Path: lib/nstack/nstack.dart (next to nstack.json)
    // Includes:
    //    - NStackWidget
    //    - NStackAppOpenWidget
    //    - Typesafe Localization section-key accessors
  }
}
