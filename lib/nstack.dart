class NStack {
  final String _projectId;
  final String _apiKey;
  final Map<String, String> _bundledTranslations;

  NStack._(this._projectId, this._apiKey, this._bundledTranslations);

  static NStack _instance;

  static NStack instance(String projectId, String apiKey,
      Map<String, String> bundledTranslations) {
    if (_instance == null) {
      _instance = NStack._(projectId, apiKey, bundledTranslations);
    }
    return _instance;
  }
}
