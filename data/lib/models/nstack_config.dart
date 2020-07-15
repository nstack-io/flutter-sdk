import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'nstack_config.g.dart';

@JsonSerializable()
class NStackConfig {
  @JsonKey(name: 'project_id')
  final String projectId;
  @JsonKey(name: 'api_key')
  final String apiKey;

  const NStackConfig({
    @required this.projectId,
    @required this.apiKey,
  });

  factory NStackConfig.fromJson(Map<String, dynamic> json) {
    return _$NStackConfigFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$NStackConfigToJson(this);
  }
}
