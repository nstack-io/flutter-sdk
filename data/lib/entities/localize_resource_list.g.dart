// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localize_resource_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalizeResourceList _$LocalizeResourceListFromJson(Map<String, dynamic> json) {
  return LocalizeResourceList(
    (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : LocalizeResource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LocalizeResourceListToJson(
        LocalizeResourceList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
