// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageList _$LanguageListFromJson(Map<String, dynamic> json) {
  return LanguageList(
    (json['data'] as List)
        ?.map((e) =>
            e == null ? null : Language.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LanguageListToJson(LanguageList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
