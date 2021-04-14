import 'package:freezed_annotation/freezed_annotation.dart';

import 'localize_resource.dart';

part 'localize_resource_list.freezed.dart';

part 'localize_resource_list.g.dart';

@freezed
abstract class LocalizeResourceList with _$LocalizeResourceList {
  const factory LocalizeResourceList({List<LocalizeResource>? data}) =
      _LocalizeResourceList;

  factory LocalizeResourceList.fromJson(Map<String, dynamic> json) =>
      _$LocalizeResourceListFromJson(json);
}
