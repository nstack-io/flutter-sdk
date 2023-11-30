enum NStackEnvironment {
  staging,
  production;

  static NStackEnvironment fromValue(String value) {
    switch (value) {
      case 'staging':
        return NStackEnvironment.staging;
      case 'production':
        return NStackEnvironment.production;
      default:
        throw ArgumentError(
            'Invalid "nstack_env", valid options: ["production", "staging"]');
    }
  }
}

class NStackConfig {
  final String projectId;
  final String apiKey;
  final NStackEnvironment env;

  const NStackConfig({
    required this.projectId,
    required this.apiKey,
    required this.env,
  });
}
