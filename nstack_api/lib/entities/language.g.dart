// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Language _$_$_LanguageFromJson(Map<String, dynamic> json) {
  return _$_Language(
    id: json['id'] as int,
    name: json['name'] as String,
    locale: json['locale'] as String,
    direction: json['direction'] as String,
    isDefault: json['is_default'] as bool,
    isBestFit: json['is_best_fit'] as bool,
  );
}

Map<String, dynamic> _$_$_LanguageToJson(_$_Language instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'locale': instance.locale,
      'direction': instance.direction,
      'is_default': instance.isDefault,
      'is_best_fit': instance.isBestFit,
    };
