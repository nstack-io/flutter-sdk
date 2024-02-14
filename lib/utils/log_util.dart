import 'package:flutter/src/foundation/constants.dart';

class LogUtil {
  static void log([Object? message, String? feature = 'NStack']) {
    if (kDebugMode) {
      print('$feature --> $message');
    }
  }
}
