import 'package:meta/meta.dart';
import 'package:nstack/other/extensions.dart';

class Message {
  final int? id;
  final int? applicationId;
  final MessageShowSetting? showSetting;
  final int? viewCount;
  final String? message;
  final String? url;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  final int? projectId;
  final MessageLocalization? localization;

  Message({
    required this.id,
    required this.applicationId,
    required this.showSetting,
    required this.viewCount,
    required this.message,
    required this.url,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.localization,
    required this.projectId,
  });

  factory Message.fromJson(Map json) {
    return Message(
      id: json['id'],
      applicationId: json['application_id'],
      showSetting: (json['show_setting'] as String?)?.toMessageShowSetting(),
      message: json['message'],
      viewCount: json['view_count'],
      url: json['url'],
      createdAt:
          (json['created_at'] as String?)?.let((it) => DateTime.parse(it)),
      updatedAt:
          (json['updated_at'] as String?)?.let((it) => DateTime.parse(it)),
      deletedAt:
          (json['deleted_at'] as String?)?.let((it) => DateTime.parse(it)),
      projectId: json['project_id'],
      localization: json['localization']?.let(
        (it) => MessageLocalization.fromJson(it),
      ),
    );
  }
}

enum MessageShowSetting {
  once,
  always,
}

extension on String {
  MessageShowSetting? toMessageShowSetting() {
    switch (this) {
      case 'show_once':
        return MessageShowSetting.once;
      case 'show_always':
        return MessageShowSetting.always;
      default:
        return null;
    }
  }
}

class MessageLocalization {
  final String? okBtn;
  final String? urlBtn;

  MessageLocalization({
    required this.okBtn,
    required this.urlBtn,
  });

  factory MessageLocalization.fromJson(Map json) {
    return MessageLocalization(
      okBtn: json['okBtn'],
      urlBtn: json['urlBtn'],
    );
  }
}
