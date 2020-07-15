// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Terms _$TermsFromJson(Map<String, dynamic> json) {
  return Terms(
    id: json['id'] as int,
    type: json['type'] == null
        ? null
        : TermsType.fromJson(json['type'] as Map<String, dynamic>),
    name: json['name'] as String,
    slug: json['slug'] as String,
    version: _$enumDecodeNullable(_$TermsVersionEnumMap, json['version']),
  );
}

Map<String, dynamic> _$TermsToJson(Terms instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'slug': instance.slug,
      'version': _$TermsVersionEnumMap[instance.version],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$TermsVersionEnumMap = {
  TermsVersion.termsConditions: 'termsConditions',
  TermsVersion.privacy: 'privacy',
  TermsVersion.cookie: 'cookie',
  TermsVersion.other: 'other',
};
