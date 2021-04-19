import 'package:nstack_api/entities/app_config.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';
import 'package:nstack_sdk/src/data/repository/local_repository.dart';
import 'package:package_info/package_info.dart';

class SetAppConfigInteractor extends FutureInteractor<void> {
  final LocalRepository localRepository;

  SetAppConfigInteractor({
    required this.localRepository,
  });

  @override
  Future<void> execute() async {
    final currentVersion = await PackageInfo.fromPlatform()
        .then((value) => value.version)
        .catchError((e) => 'unknown');
    final localAppConfig = await localRepository.getAppConfig();
    final updatedAppConfig = AppConfig(
      version: currentVersion,
      previousVersion: localAppConfig.version ?? currentVersion,
    );
    await localRepository.setAppConfig(updatedAppConfig);
  }
}
