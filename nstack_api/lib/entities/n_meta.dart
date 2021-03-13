import 'package:freezed_annotation/freezed_annotation.dart';

part 'n_meta.freezed.dart';

part 'n_meta.g.dart';

@freezed
abstract class NMeta with _$NMeta {
  const factory NMeta({
    @JsonKey(name: 'platform') String platform,
    @JsonKey(name: 'environment') String environment,
    @JsonKey(name: 'app_version') String appVersion,
    @JsonKey(name: 'os_version') String osVersion,
    @JsonKey(name: 'device') String device,
  }) = _NMeta;

  factory NMeta.fromJson(Map<String, dynamic> json) => _$NMetaFromJson(json);
}
