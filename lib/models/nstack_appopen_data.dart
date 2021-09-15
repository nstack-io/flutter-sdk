import 'package:nstack/models/app_open_platform.dart';

class NStackAppOpenData {
  final AppOpenPlatform platform;
  final String guid;
  final String version;
  final String oldVersion;
  final String lastUpdated;

  const NStackAppOpenData({
    required this.platform,
    required this.guid,
    required this.version,
    required this.oldVersion,
    required this.lastUpdated,
  });
}
