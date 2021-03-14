import 'package:freezed_annotation/freezed_annotation.dart';

part 'localize_language.freezed.dart';

part 'localize_language.g.dart';

@freezed
abstract class LocalizeLanguage with _$LocalizeLanguage {
  const factory LocalizeLanguage({
  int id,
  String name,
  String locale,
  String direction,
  @JsonKey(name: 'is_default')
  bool isDefault,
  @JsonKey(name: 'is_best_fit')
  bool isBestFit,
  }) = _Language;

  factory LocalizeLanguage.fromJson(Map<String, dynamic> json) =>
      _$LocalizeLanguageFromJson(json);
}