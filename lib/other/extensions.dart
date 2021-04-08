import 'package:collection/collection.dart' show IterableExtension;

extension DartEx<T> on T {
  R let<R>(R Function(T it) block) {
    return block(this);
  }

  T? takeIf(bool Function(T it) condition) {
    return condition(this) ? this : null;
  }
}

extension MapEx<T, K> on Map<T, K> {
  T? keyFromValue(K value) => entries
      .firstWhereOrNull((entry) => entry.value == value)
      ?.key;

  K? getOrNull(T key) {
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

void throwIf(bool test, Error Function() errorFactoryFunc) {
  return throwIfNot(!test, errorFactoryFunc);
}

void throwIfNot(bool test, Error Function() errorFactoryFunc) {
  if (!test) {
    throw errorFactoryFunc();
  }
}

extension StringEx on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  bool get isNullOrBlank => this == null || this!.isEmpty || this!.trim().isEmpty;

  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;

  bool get isNotNullOrBlank =>
      this != null && this!.isNotEmpty && this!.trim().isNotEmpty;
}
