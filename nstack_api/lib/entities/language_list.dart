import 'package:freezed_annotation/freezed_annotation.dart';

import 'language.dart';

part 'language_list.freezed.dart';

part 'language_list.g.dart';

@freezed
abstract class LanguageList with _$LanguageList {
  const factory LanguageList({
    List<Language> data,
  }) = _LanguageList;

  factory LanguageList.fromJson(Map<String, dynamic> json) =>
      _$LanguageListFromJson(json);
}