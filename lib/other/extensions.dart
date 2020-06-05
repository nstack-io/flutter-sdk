extension DartEx<T> on T {
  R let<R>(R Function(T it) block) {
    return block(this);
  }

  T takeIf(bool Function(T it) condition) {
    return condition(this) ? this : null;
  }
}

extension MapEx<T, K> on Map<T, K> {
  T keyFromValue(K value) =>
    entries.firstWhere((entry) => entry.value == value, orElse: () => null)?.key;

  K getOrNull(T key) {
    if (this == null || !this.containsKey(key)) {
      return null;
    } else {
      return this[key];
    }
  }

  K getOrElse(T key, K fallback) {
    return this.getOrNull(key) ?? fallback;
  }
}