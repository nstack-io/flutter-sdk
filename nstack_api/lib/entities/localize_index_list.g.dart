// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localize_index_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalizeIndexList _$$_LocalizeIndexListFromJson(Map<String, dynamic> json) =>
    _$_LocalizeIndexList(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LocalizeIndex.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LocalizeIndexListToJson(
        _$_LocalizeIndexList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
