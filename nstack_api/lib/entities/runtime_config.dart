import 'package:freezed_annotation/freezed_annotation.dart';

part 'runtime_config.freezed.dart';

part 'runtime_config.g.dart';

@freezed
abstract class RuntimeConfig with _$RuntimeConfig {
  const factory RuntimeConfig({
    String platformName,
    String platformVersion,
    String device,
  }) = _RuntimeConfig;

  factory RuntimeConfig.fromJson(Map<String, dynamic> json) =>
      _$RuntimeConfigFromJson(json);
}
