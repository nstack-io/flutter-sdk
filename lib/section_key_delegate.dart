import 'package:nstack/src/injection/injector.dart';
import 'package:nstack/src/interactors/get_localized_section_key_interactor.dart';
import 'package:nstack/src/repository.dart';

// TODO: Deprecate
@Deprecated("Use LocalizationSectionKeyDelegate instead")
abstract class SectionKeyDelegate {
  final String sectionKey;

  const SectionKeyDelegate(this.sectionKey);

  String get(String key, String fallbackValue) =>
      LocalizationRepository().getSectionKeyValue(
        sectionKey,
        key,
        fallbackValue,
      );
}

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
