import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'update_translate.g.dart';

@JsonSerializable()
class UpdateTranslate {
  final String title;
  final String message;
  @JsonKey(name: 'positive_button')
  final String positiveButton;
  @JsonKey(name: 'negative_button')
  final String negativeButton;

  const UpdateTranslate({
    @required this.title,
    @required this.message,
    @required this.positiveButton,
    @required this.negativeButton,
  });

  factory UpdateTranslate.fromJson(Map<String, dynamic> json) {
    return _$UpdateTranslateFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UpdateTranslateToJson(this);
  }
}
