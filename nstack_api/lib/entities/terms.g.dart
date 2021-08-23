// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Terms _$$_TermsFromJson(Map<String, dynamic> json) => _$_Terms(
      id: json['id'] as int?,
      type: json['type'] == null
          ? null
          : TermsType.fromJson(json['type'] as Map<String, dynamic>),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      version: _$enumDecodeNullable(_$TermsVersionEnumMap, json['version']),
    );

Map<String, dynamic> _$$_TermsToJson(_$_Terms instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'slug': instance.slug,
      'version': _$TermsVersionEnumMap[instance.version],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$TermsVersionEnumMap = {
  TermsVersion.termsConditions: 'termsConditions',
  TermsVersion.privacy: 'privacy',
  TermsVersion.cookie: 'cookie',
  TermsVersion.other: 'other',
};
