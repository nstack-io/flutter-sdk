import 'dart:convert';
import 'dart:io';

import 'constants.dart';

class Config {
  final String id;
  final String key;

  Config(
    this.id,
    this.key,
  );

  Config.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        key = json['key'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
      };
}

Future<bool> hasConfigFile({
  String path = nStackConfigFilePath,
}) async {
  return await File(path).exists();
}

Future<Config> getConfig({
  String path = nStackConfigFilePath,
}) async {
  return File(path).readAsString().then((String content) {
    return Config.fromJson(jsonDecode(content));
  }).catchError((e, s) {
    return null;
  });
}
