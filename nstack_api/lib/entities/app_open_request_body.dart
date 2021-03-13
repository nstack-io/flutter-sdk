import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_open_request_body.freezed.dart';

part 'app_open_request_body.g.dart';

@freezed
abstract class AppOpenRequestBody with _$AppOpenRequestBody {
  const factory AppOpenRequestBody({
  String platform,
  String guid,
  String version,
  @JsonKey(name: 'old_version')
  String oldVersion,
  @JsonKey(name: 'last_updated')
  DateTime lastUpdated,
  }) = _AppOpenRequestBody;

  factory AppOpenRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AppOpenRequestBodyFromJson(json);
}