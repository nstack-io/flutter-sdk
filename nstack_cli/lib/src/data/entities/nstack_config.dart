import 'dart:convert';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants.dart';

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

Future<bool> hasNStackConfigFile({
  String path = nStackConfigFilePath,
}) async {
  return await File(path).exists();
}

Future<NStackConfig> getNStackConfig({
  String path = nStackConfigFilePath,
}) async {
  return File(path)
      .readAsString()
      .then((String content) => NStackConfig.fromJson(jsonDecode(content)))
      .catchError((error, stacktrace) => NStackConfig());
}
