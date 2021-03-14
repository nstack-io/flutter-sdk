import 'package:freezed_annotation/freezed_annotation.dart';

import 'localize_language.dart';

part 'localize_language_list.freezed.dart';

part 'localize_language_list.g.dart';

@freezed
abstract class LocalizeLanguageList with _$LocalizeLanguageList {
  const factory LocalizeLanguageList({
    List<LocalizeLanguage> data,
  }) = _LanguageList;

  factory LocalizeLanguageList.fromJson(Map<String, dynamic> json) =>
      _$LocalizeLanguageListFromJson(json);
}