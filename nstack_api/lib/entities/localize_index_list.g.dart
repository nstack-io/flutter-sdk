// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localize_index_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalizeIndexList _$_$_LocalizeIndexListFromJson(Map<String, dynamic> json) {
  return _$_LocalizeIndexList(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : LocalizeIndex.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_LocalizeIndexListToJson(
        _$_LocalizeIndexList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
