import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'runtime_config.g.dart';

@JsonSerializable()
class RuntimeConfig {
  final String platformName;
  final String platformVersion;
  final String device;

  const RuntimeConfig({
    @required this.platformName,
    @required this.platformVersion,
    @required this.device,
  });

  factory RuntimeConfig.fromJson(Map<String, dynamic> json) {
    return _$RuntimeConfigFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RuntimeConfigToJson(this);
  }
}
