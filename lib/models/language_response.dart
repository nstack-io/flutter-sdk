class LocalizationData {
  final Map<String, Map<String, String>>? data;

  LocalizationData(this.data);

  factory LocalizationData.fromJson(Map json) {
    final rawData =
        json['data'] as Map?; // Cast to Map to ensure we have a map structure
    final Map<String, Map<String, String>> castedData = {};

    rawData?.forEach((sectionKey, sectionValue) {
      if (sectionValue is Map) {
        // Cast each value to Map<String, dynamic> and then to Map<String, String>
        castedData[sectionKey as String] = sectionValue.map((key, value) {
          return MapEntry(key as String, value as String);
        });
      } else {
        throw FormatException(
            'Expected a Map for section $sectionKey, got ${sectionValue.runtimeType}.');
      }
    });

    return LocalizationData(castedData);
  }
}
