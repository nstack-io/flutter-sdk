import '../config.dart';
import '../constants.dart';
import '../interactor.dart';
import 'doctor_command.dart';

class DoctorInteractor implements FutureInteractor<void> {
  @override
  Future<void> execute({DoctorCommand command}) async {
    final config = await getConfig();
    final hasValidConfigFile = await hasConfigFile();
    final hasValidConfigId = config?.id?.isNotEmpty ?? false;
    final hasValidConfigKey = config?.key?.isNotEmpty ?? false;

    print('Doctor summary:');

    if (hasValidConfigId && hasValidConfigKey) {
      print('[✓] NStack configuration file');
    } else {
      print('[!] NStack configuration file');
      if (command.verbose && !hasValidConfigFile) {
        print('     • $nStackConfigFilePath not found');
      }
      if (command.verbose && hasValidConfigFile && !hasValidConfigId) {
        print('     • NStack project id missing or invalid');
      }
      if (command.verbose && hasValidConfigFile && !hasValidConfigKey) {
        print('     • NStack api key missing or invalid');
      }
    }

    var issueCount = 0;
    if (!hasValidConfigFile) issueCount++;

    if (issueCount == 1) {
      print("Doctor found $issueCount issue.");
    } else if (issueCount > 1) {
      print("Doctor found $issueCount issues.");
    }
  }
}
