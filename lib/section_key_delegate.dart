import 'package:nstack/src/repository.dart';

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
