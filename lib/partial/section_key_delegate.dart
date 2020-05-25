
import '../models/section_key.dart';
import '../src/repository.dart';

class SectionKeyDelegate {
	String get(SectionKey sectionKey) => Repository().getSectionKeyValue(sectionKey);
}