import 'package:nstack_sdk/src/injection/injector.dart';
import 'package:nstack_sdk/src/interactors/get_localized_section_key_interactor.dart';

abstract class LocalizationSectionKeyDelegate {
  final String section;

  const LocalizationSectionKeyDelegate(
    this.section,
  );

  String get(String key) =>
      injector<GetLocalizedSectionKeyInteractor>().execute(
        section: section,
        key: key,
      );
}
