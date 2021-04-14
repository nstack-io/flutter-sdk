import 'dart:html';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'localize_language.dart';
import 'platform.dart';

part 'localize_resource_meta.freezed.dart';

part 'localize_resource_meta.g.dart';

@freezed
abstract class LocalizeResourceMeta with _$LocalizeResourceMeta {
  const factory LocalizeResourceMeta({
    LocalizeLanguage? language,
    Platform? platform,
  }) = _LocalizeResourceMeta;

  factory LocalizeResourceMeta.fromJson(Map<String, dynamic> json) =>
      _$LocalizeResourceMetaFromJson(json);
}
