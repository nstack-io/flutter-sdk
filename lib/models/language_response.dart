class LocalizationData {
  final Map<String, Map<String, String>> data;

  LocalizationData(this.data);

  factory LocalizationData.fromJson(Map json) {
    final rawData = json['data'];

    // Check if rawData is a Map, if not, log and return empty LocalizationData
    if (rawData == null || rawData is! Map) {
      print(
        'Warning: Expected data to be a Map, but found ${rawData.runtimeType}.',
      );
      return LocalizationData({});
    }

    final Map<String, Map<String, String>> castedData = {};

    rawData.forEach((sectionKey, sectionValue) {
      if (sectionKey is! String || sectionValue is! Map) {
        print(
          'Warning: Expected Key to be String and Value to be Map in data, but found Key type: ${sectionKey.runtimeType} and Value type: ${sectionValue.runtimeType}.',
        );
        return;
      }
      var sectionMap = <String, String>{};
      sectionValue.forEach((key, value) {
        if (key is! String && value is! String) {
          print(
            'Warning: Expected Key and Value to be String in section $sectionKey, but found Key type: ${key.runtimeType} and Value type: ${value.runtimeType}.',
          );
          return;
        }
        sectionMap[key] = value;
      });
      castedData[sectionKey] = sectionMap;
    });

    return LocalizationData(castedData);
  }
}
