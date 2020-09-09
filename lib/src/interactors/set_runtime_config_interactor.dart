import 'dart:io';

import 'package:api/entities/runtime_config.dart';
import 'package:device_info/device_info.dart';
import 'package:get_version/get_version.dart';
import 'package:meta/meta.dart';
import 'package:nstack/src/interactors/interactor.dart';
import 'package:nstack/src/repository/local_repository.dart';

class SetRuntimeConfigInteractor extends FutureInteractor<void> {
  final LocalRepository localRepository;

  SetRuntimeConfigInteractor({
    @required this.localRepository,
  });

  @override
  Future<void> execute() async {
    final runtimeConfig = RuntimeConfig(
      platformName: platformName,
      platformVersion: await platformVersion,
      device: await device,
    );
    await localRepository.setRuntimeConfig(runtimeConfig);
  }

  String get platformName {
    if (Platform.isAndroid) {
      return 'android';
    } else if (Platform.isIOS) {
      return 'ios';
    } else {
      return 'unknown';
    }
  }

  Future<String> get platformVersion async {
    try {
      return await GetVersion.platformVersion;
    } catch (error) {
      return 'unknown';
    }
  }

  Future<String> get device async {
    if (Platform.isAndroid) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      return androidInfo.model;
    } else if (Platform.isIOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      return iosInfo.utsname.machine;
    } else {
      return 'unknown';
    }
  }
}
