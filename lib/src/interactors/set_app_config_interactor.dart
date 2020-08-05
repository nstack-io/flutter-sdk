import 'package:data/entities/app_config.dart';
import 'package:data/local_repository.dart';
import 'package:get_version/get_version.dart';
import 'package:meta/meta.dart';
import 'package:nstack/src/interactors/interactor.dart';

class SetAppConfigInteractor extends FutureInteractor<void> {
  final LocalRepository localRepository;

  SetAppConfigInteractor({
    @required this.localRepository,
  });

  @override
  Future<void> execute() async {
    String currentVersion;
    try {
      currentVersion = await GetVersion.projectVersion;
    } catch (error) {
      currentVersion = '1.0.0';
    }
    final localAppConfig = await localRepository.getAppConfig();
    final updatedAppConfig = AppConfig(
      version: currentVersion,
      previousVersion: localAppConfig.version ?? currentVersion,
    );
    await localRepository.setAppConfig(updatedAppConfig);
  }
}
