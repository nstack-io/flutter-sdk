import 'package:meta/meta.dart';

class NStackAppOpenData {
  final String platform = "android";
  final String guid;
  final String version;
  final String oldVersion;
  final String lastUpdated;

  const NStackAppOpenData({
    @required this.guid,
    @required this.version,
    @required this.oldVersion,
    @required this.lastUpdated,
  });
}
