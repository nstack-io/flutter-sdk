import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_localization.freezed.dart';

part 'message_localization.g.dart';

@freezed
abstract class MessageLocalization with _$MessageLocalization {
  const factory MessageLocalization({
    @JsonKey(name: 'ok_btn') String okBtn,
    @JsonKey(name: 'url_btn') String urlBtn,
  }) = _MessageLocalization;

  factory MessageLocalization.fromJson(Map<String, dynamic> json) =>
      _$MessageLocalizationFromJson(json);
}
