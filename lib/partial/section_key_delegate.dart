import 'package:nstack/models/text_info.dart';
import 'package:nstack/src/repository.dart';

abstract class SectionKeyDelegate {
  final String sectionKey;

  const SectionKeyDelegate(this.sectionKey);

	String get(TextInfo textInfo) => LocalizationRepository().getSectionKeyValue(sectionKey, textInfo);
}