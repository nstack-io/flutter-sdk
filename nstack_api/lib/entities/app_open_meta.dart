import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_open_meta.freezed.dart';

part 'app_open_meta.g.dart';

@freezed
abstract class AppOpenMeta with _$AppOpenMeta {
  const factory AppOpenMeta({
    @JsonKey(name: 'accept_language')
    String? acceptLanguage,
  }) = _AppOpenMeta;

  factory AppOpenMeta.fromJson(Map<String, dynamic> json) =>
      _$AppOpenMetaFromJson(json);
}
