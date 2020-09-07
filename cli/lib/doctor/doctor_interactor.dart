import 'dart:convert';
import 'dart:io';

import '../config.dart';
import '../constants.dart';
import '../interactor.dart';
import 'doctor_command.dart';

class DoctorInteractor implements FutureInteractor<void> {
  @override
  Future<void> execute({DoctorCommand command}) async {
    final config = await getConfig(nStackConfigFilePath);
    final hasConfigFile = await hasNStackConfigFile();
    final hasValidConfigId = config?.id?.isNotEmpty ?? false;
    final hasValidConfigKey = config?.key?.isNotEmpty ?? false;

    print('Doctor summary:');

    if (hasValidConfigId && hasValidConfigKey) {
      print('[✓] NStack configuration file');
    } else {
      print('[!] NStack configuration file');
      if (command.verbose && !hasConfigFile) {
        print('     • $nStackConfigFilePath not found');
      }
      if (command.verbose && hasConfigFile && !hasValidConfigId) {
        print('     • NStack project id missing or invalid');
      }
      if (command.verbose && hasConfigFile && !hasValidConfigKey) {
        print('     • NStack api key missing or invalid');
      }
    }

    var issueCount = 0;
    if (!hasConfigFile) issueCount++;
    print("Doctor found $issueCount issues.");
  }

  Future<bool> hasNStackConfigFile() async {
    return await File(nStackConfigFilePath).exists();
  }

  Future<Config> getConfig(String path) async {
    return File(path).readAsString().then((String content) {
      return Config.fromJson(jsonDecode(content));
    }).catchError((e, s) {
      print(e);
      print(s);
      return null;
    });
  }
}
