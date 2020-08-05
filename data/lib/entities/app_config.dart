import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'app_config.g.dart';

@JsonSerializable()
class AppConfig {
  final String version;
  final String previousVersion;

  const AppConfig({
    @required this.version,
    @required this.previousVersion,
  });

  factory AppConfig.fromJson(Map<String, dynamic> json) {
    return _$AppConfigFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AppConfigToJson(this);
  }
}
