import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'n_meta.g.dart';

@JsonSerializable()
class NMeta {
  @JsonKey(name: 'platform')
  final String platform;
  @JsonKey(name: 'environment')
  final String environment;
  @JsonKey(name: 'app_version')
  final String appVersion;
  @JsonKey(name: 'os_version')
  final String osVersion;
  @JsonKey(name: 'device')
  final String device;

  const NMeta({
    @required this.platform,
    @required this.environment,
    @required this.appVersion,
    @required this.osVersion,
    @required this.device,
  });

  factory NMeta.fromJson(Map<String, dynamic> json) {
    return _$NMetaFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$NMetaToJson(this);
  }
}
