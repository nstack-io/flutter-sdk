enum NStackEnv {
  stg("stg"),
  prod('prod');

  final String value;
  const NStackEnv(this.value);

  static final Map<String, NStackEnv> _values = {
    for (NStackEnv status in NStackEnv.values) status.value: status
  };

  static NStackEnv fromValue(String value) {
    return _values[value] ??
        (throw ArgumentError('Invalid nstack environment value: $value'));
  }

  @override
  String toString() => value;
}

class NStackConfig {
  final String projectId;
  final String apiKey;
  final NStackEnv env;

  const NStackConfig({
    required this.projectId,
    required this.apiKey,
    required this.env,
  });
}
