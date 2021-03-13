// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageList _$_$_LanguageListFromJson(Map<String, dynamic> json) {
  return _$_LanguageList(
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : Language.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_LanguageListToJson(_$_LanguageList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
