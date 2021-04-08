class LocalizationData {
  final Map<String, dynamic>? data;

  LocalizationData(this.data);

  factory LocalizationData.fromJson(Map json) {
    return LocalizationData(json['data']);
  }
}
