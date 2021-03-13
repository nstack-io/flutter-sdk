import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.freezed.dart';

part 'language.g.dart';

@freezed
abstract class Language with _$Language {
  const factory Language({
  int id,
  String name,
  String locale,
  String direction,
  @JsonKey(name: 'is_default')
  bool isDefault,
  @JsonKey(name: 'is_best_fit')
  bool isBestFit,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}