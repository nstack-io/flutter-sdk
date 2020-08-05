import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'nstack_app_open_data.g.dart';

@JsonSerializable()
class NStackAppOpenData {
  final String platform;
  final String guid;
  final String version;
  @JsonKey(name: 'old_version')
  final String oldVersion;
  @JsonKey(name: 'last_updated')
  final DateTime lastUpdated;

  const NStackAppOpenData({
    @required this.platform,
    @required this.guid,
    @required this.version,
    @required this.oldVersion,
    @required this.lastUpdated,
  });

  factory NStackAppOpenData.fromJson(Map<String, dynamic> json) {
    return _$NStackAppOpenDataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$NStackAppOpenDataToJson(this);
  }
}
