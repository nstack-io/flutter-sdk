// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localize_resource_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalizeResourceList _$$_LocalizeResourceListFromJson(
        Map<String, dynamic> json) =>
    _$_LocalizeResourceList(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LocalizeResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LocalizeResourceListToJson(
        _$_LocalizeResourceList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
