import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'app_open_request_body.g.dart';

@JsonSerializable()
class AppOpenRequestBody {
  final String platform;
  final String guid;
  final String version;
  @JsonKey(name: 'old_version')
  final String oldVersion;
  @JsonKey(name: 'last_updated')
  final DateTime lastUpdated;

  const AppOpenRequestBody({
    @required this.platform,
    @required this.guid,
    @required this.version,
    @required this.oldVersion,
    @required this.lastUpdated,
  });

  factory AppOpenRequestBody.fromJson(Map<String, dynamic> json) {
    return _$AppOpenRequestBodyFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AppOpenRequestBodyToJson(this);
  }
}
