import 'package:freezed_annotation/freezed_annotation.dart';

import 'localize_resource_meta.dart';

part 'localize_resource.freezed.dart';

part 'localize_resource.g.dart';

@freezed
abstract class LocalizeResource with _$LocalizeResource {
  const factory LocalizeResource({
    Map<String, dynamic> data,
    LocalizeResourceMeta meta,
  }) = _LocalizeResource;

  factory LocalizeResource.fromJson(Map<String, dynamic> json) =>
      _$LocalizeResourceFromJson(json);
}

extension LocalizeResourceExtension on LocalizeResource {
  int get id => meta.language.id;
}
