import 'package:json_annotation/json_annotation.dart';

import 'localize_resource_meta.dart';

part 'localize_resource.g.dart';

@JsonSerializable()
class LocalizeResource {
  final Map<String, dynamic> data;
  final LocalizeResourceMeta meta;

  LocalizeResource(
    this.data,
    this.meta,
  );

  factory LocalizeResource.fromJson(Map<String, dynamic> json) {
    return _$LocalizeResourceFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LocalizeResourceToJson(this);
  }
}

extension LocalizeResourceExtension on LocalizeResource {
  int get id => meta.language.id;
}
