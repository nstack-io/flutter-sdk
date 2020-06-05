class LanguageResponse {
  final Map<String, dynamic> data;

  LanguageResponse(this.data);

  factory LanguageResponse.fromJson(Map json) {
    return LanguageResponse(json['data']);
  }
}
