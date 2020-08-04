import 'dart:convert';

// TODO: Deprecate
@Deprecated("Use localize_resource_list.dart")
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
