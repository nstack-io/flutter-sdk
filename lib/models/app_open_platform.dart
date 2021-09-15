/// See https://github.com/nstack-io/nstack-server/blob/master/project/Models/AppOpens/Validation/AppOpenValidator.php
enum AppOpenPlatform {
  ios,
  android,
  windows,
  web,
  unknown,
}

extension AppOpenPlatformExtensions on AppOpenPlatform {
  String get slug {
    switch (this) {
      case AppOpenPlatform.ios:
        return 'ios';
      case AppOpenPlatform.android:
        return 'android';
      case AppOpenPlatform.windows:
        return 'windows';
      case AppOpenPlatform.web:
        return 'web';
      case AppOpenPlatform.unknown:
        return 'unknown';
    }
  }
}
