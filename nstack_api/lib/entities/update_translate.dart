import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_translate.freezed.dart';

part 'update_translate.g.dart';

@freezed
abstract class UpdateTranslate with _$UpdateTranslate {
  const factory UpdateTranslate({
    String? title,
    String? message,
    @JsonKey(name: 'positive_button') String? positiveButton,
    @JsonKey(name: 'negative_button') String? negativeButton,
  }) = _UpdateTranslate;

  factory UpdateTranslate.fromJson(Map<String, dynamic> json) =>
      _$UpdateTranslateFromJson(json);
}
