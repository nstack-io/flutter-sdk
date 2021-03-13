import 'package:freezed_annotation/freezed_annotation.dart';

part 'nstack_api_config.freezed.dart';

part 'nstack_api_config.g.dart';

@freezed
abstract class NStackApiConfig with _$NStackApiConfig {
  const factory NStackApiConfig({
    @JsonKey(name: 'application_id') String applicationId,
    @JsonKey(name: 'rest_api_key') String restApiKey,
  }) = _NStackApiConfig;

  factory NStackApiConfig.fromJson(Map<String, dynamic> json) =>
      _$NStackApiConfigFromJson(json);
}
