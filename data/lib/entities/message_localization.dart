import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'message_localization.g.dart';

@JsonSerializable()
class MessageLocalization {
  @JsonKey(name: 'ok_btn')
  final String okBtn;
  @JsonKey(name: 'url_btn')
  final String urlBtn;

  const MessageLocalization({
    @required this.okBtn,
    @required this.urlBtn,
  });

  factory MessageLocalization.fromJson(Map<String, dynamic> json) {
    return _$MessageLocalizationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MessageLocalizationToJson(this);
  }
}
