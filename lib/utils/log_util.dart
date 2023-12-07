import 'package:flutter/src/foundation/constants.dart';

class LogUtil {
  static void log(Object? message) {
    if (kDebugMode) {
      print(message);
    }
  }
}
