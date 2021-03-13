// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localize_resource_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalizeResourceList _$_$_LocalizeResourceListFromJson(
    Map<String, dynamic> json) {
  return _$_LocalizeResourceList(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : LocalizeResource.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_LocalizeResourceListToJson(
        _$_LocalizeResourceList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
