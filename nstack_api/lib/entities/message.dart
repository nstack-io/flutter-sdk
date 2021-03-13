import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_localization.dart';
import 'message_show_setting.dart';

part 'message.freezed.dart';

part 'message.g.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
  int id,
  @JsonKey(name: 'application_id')
  int applicationId,
  @JsonKey(name: 'show_setting')
  MessageShowSetting showSetting,
  @JsonKey(name: 'view_count')
  int viewCount,
  String message,
  String url,
  @JsonKey(name: 'created_at')
  DateTime createdAt,
  @JsonKey(name: 'updated_at')
  DateTime updatedAt,
  @JsonKey(name: 'deleted_at')
  DateTime deletedAt,
  @JsonKey(name: 'project_id')
  int projectId,
  MessageLocalization localization,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}