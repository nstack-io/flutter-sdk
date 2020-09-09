import 'package:json_annotation/json_annotation.dart';

import 'language.dart';
import 'platform.dart';

part 'localize_resource_meta.g.dart';

@JsonSerializable()
class LocalizeResourceMeta {
  final Language language;
  final Platform platform;

  LocalizeResourceMeta(
    this.language,
    this.platform,
  );

  factory LocalizeResourceMeta.fromJson(Map<String, dynamic> json) {
    return _$LocalizeResourceMetaFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LocalizeResourceMetaToJson(this);
  }
}
