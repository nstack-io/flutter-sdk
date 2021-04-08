import 'package:meta/meta.dart';
import 'package:nstack/models/update_translate.dart';
import 'package:nstack/other/extensions.dart';

class UpdateInfo {
  final String? state;
  final int? lastId;
  final String? version;
  final String? link;
  final UpdateTranslate? translate;
  final String? fileUrl;

  UpdateInfo({
    required this.state,
    required this.lastId,
    required this.version,
    required this.link,
    required this.translate,
    required this.fileUrl,
  });

  factory UpdateInfo.fromJson(Map json) {
    return UpdateInfo(
      state: json['state'],
      lastId: json['last_id'],
      version: json['version'],
      link: json['link'],
      translate: (json['translate'] as Map?)?.let((it) => UpdateTranslate.fromJson(it)),
      fileUrl: json['file_url'],
    );
  }
}
