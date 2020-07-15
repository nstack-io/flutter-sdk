import 'dart:convert';

// TODO: Write a custom converter to avoid dynamic
// See: https://github.com/google/json_serializable.dart/blob/master/example/lib/json_converter_example.dart
class LocalizationData {
  final Map<String, dynamic> data;

  LocalizationData(this.data);

  factory LocalizationData.fromJson(Map json) {
    return LocalizationData(json['data']);
  }

  String toJson() {
    return jsonEncode(this);
  }
}
