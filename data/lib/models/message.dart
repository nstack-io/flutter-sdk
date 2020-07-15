import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'message_localization.dart';
import 'message_show_setting.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  final int id;
  @JsonKey(name: 'application_id')
  final int applicationId;
  @JsonKey(name: 'show_setting')
  final MessageShowSetting showSetting;
  @JsonKey(name: 'view_count')
  final int viewCount;
  final String message;
  final String url;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @JsonKey(name: 'deleted_at')
  final DateTime deletedAt;
  @JsonKey(name: 'project_id')
  final int projectId;
  final MessageLocalization localization;

  const Message({
    @required this.id,
    @required this.applicationId,
    @required this.showSetting,
    @required this.viewCount,
    @required this.message,
    @required this.url,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.deletedAt,
    @required this.projectId,
    @required this.localization,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return _$MessageFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MessageToJson(this);
  }
}
