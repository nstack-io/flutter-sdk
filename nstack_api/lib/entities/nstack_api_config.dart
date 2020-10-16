import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'nstack_api_config.g.dart';

@JsonSerializable()
class NStackApiConfig {
  @JsonKey(name: 'application_id')
  final String applicationId;
  @JsonKey(name: 'rest_api_key')
  final String restApiKey;

  const NStackApiConfig({
    @required this.applicationId,
    @required this.restApiKey,
  });

  factory NStackApiConfig.fromJson(Map<String, dynamic> json) {
    return _$NStackApiConfigFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$NStackApiConfigToJson(this);
  }
}
