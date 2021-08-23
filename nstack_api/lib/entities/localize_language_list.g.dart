// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localize_language_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageList _$$_LanguageListFromJson(Map<String, dynamic> json) =>
    _$_LanguageList(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LocalizeLanguage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LanguageListToJson(_$_LanguageList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
