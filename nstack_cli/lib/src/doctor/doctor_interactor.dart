import 'package:nstack_cli/src/data/entities/nstack_config.dart';

import '../constants.dart';
import '../interactor.dart';
import 'doctor_command.dart';

class DoctorInteractor implements FutureInteractor<void> {
  @override
  Future<void> execute({DoctorCommand? command}) async {
    final config = await getNStackConfig();
    final hasConfigFile = await hasNStackConfigFile();
    final hasConfigId = config.applicationId.isNotEmpty;
    final hasConfigKey = config.restApiKey.isNotEmpty;

    print('Doctor summary:');

    if (hasConfigId && hasConfigKey) {
      print('[✓] NStack configuration');
    } else {
      print('[!] NStack configuration');
      if (command!.verbose && !hasConfigFile) {
        print('     • $nStackConfigFilePath not found');
      }
      if (command.verbose && hasConfigFile && !hasConfigId) {
        print('     • NStack application id missing or invalid');
      }
      if (command.verbose && hasConfigFile && !hasConfigKey) {
        print('     • NStack rest api key missing or invalid');
      }
    }

    var issueCount = 0;
    if (!hasConfigFile) issueCount++;

    if (issueCount == 1) {
      print('\nDoctor found $issueCount issue!');
    } else if (issueCount > 1) {
      print('\nDoctor found $issueCount issues!');
    } else {
      print('\nDoctor found no issues!');
    }
  }
}
