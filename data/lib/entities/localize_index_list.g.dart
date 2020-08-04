// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localize_index_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalizeIndexList _$LocalizeIndexListFromJson(Map<String, dynamic> json) {
  return LocalizeIndexList(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : LocalizeIndex.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LocalizeIndexListToJson(LocalizeIndexList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
