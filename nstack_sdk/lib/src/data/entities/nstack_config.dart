import 'package:freezed_annotation/freezed_annotation.dart';

part 'nstack_config.freezed.dart';

part 'nstack_config.g.dart';

@freezed
abstract class NStackConfig with _$NStackConfig {
  const factory NStackConfig({
    @JsonKey(name: 'application_id') @Default('') String applicationId,
    @JsonKey(name: 'rest_api_key') @Default('') String restApiKey,
  }) = _NStackConfig;

  factory NStackConfig.fromJson(Map<String, dynamic> json) =>
      _$NStackConfigFromJson(json);
}
