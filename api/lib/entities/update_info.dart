import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'update_translate.dart';

part 'update_info.g.dart';

@JsonSerializable()
class UpdateInfo {
  final String state;
  @JsonKey(name: 'last_id')
  final int lastId;
  final String version;
  final String link;
  final UpdateTranslate translate;
  @JsonKey(name: 'file_url')
  final String fileUrl;

  const UpdateInfo({
    @required this.state,
    @required this.lastId,
    @required this.version,
    @required this.link,
    @required this.translate,
    @required this.fileUrl,
  });

  factory UpdateInfo.fromJson(Map<String, dynamic> json) {
    return _$UpdateInfoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UpdateInfoToJson(this);
  }
}
