import 'package:data/models/localize_resource.dart';
import 'package:json_annotation/json_annotation.dart';

part 'localize_resource_list.g.dart';

@JsonSerializable()
class LocalizeResourceList {
  final List<LocalizeResource> data;

  LocalizeResourceList(
    this.data,
  );

  factory LocalizeResourceList.fromJson(Map<String, dynamic> json) {
    return _$LocalizeResourceListFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LocalizeResourceListToJson(this);
  }
}
