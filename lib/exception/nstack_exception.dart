class NStackException implements Exception {
  final String message;

  NStackException._(this.message);

  factory NStackException.updateFailed(String message) {
    return NStackException._(message);
  }

  @override
  String toString() {
    return message;
  }
}
