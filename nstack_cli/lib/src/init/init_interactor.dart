import 'dart:io';

import 'package:nstack_api/entities/localize_index.dart';
import 'package:nstack_api/entities/localize_index_list.dart';
import 'package:nstack_api/entities/n_meta.dart';
import 'package:nstack_api/entities/nstack_api_config.dart';
import 'package:nstack_api/http_nstack_api.dart';
import 'package:nstack_cli/src/code_generation/localization_class_generator.dart';
import 'package:nstack_cli/src/code_generation/localization_resource_generator.dart';
import 'package:nstack_cli/src/code_generation/nstack_config_generator.dart';

import '../interactor.dart';
import 'init_command.dart';

class InitInteractor implements FutureInteractor<void> {
  late HttpNStackApi api;

  @override
  Future<void> execute({InitCommand? command}) async {
    // TODO: Validate current path. Path needs to be at the root of a Flutter project.
    // Obtain application id.
    print('Enter your application id: ');
    final applicationId = stdin.readLineSync() ?? '';
    if (applicationId.isEmpty) {
      print('Please enter a valid application id.');
      return;
    }
    // Obtain api key.
    print('Enter your rest api key: ');
    final apiKey = stdin.readLineSync() ?? '';
    if (apiKey.isEmpty) {
      print('Please enter a valid rest api key.');
      return;
    }
    // Create NStackApiConfig from obtained input.
    final config = NStackApiConfig(
      applicationId: applicationId,
      restApiKey: apiKey,
    );
    // Create NStackApi
    api = HttpNStackApi(
      config: config,
      meta: NMeta(
        platform: 'android',
        environment: 'local',
        appVersion: '1.0',
        osVersion: '1.0',
        device: 'nstack_cli',
      ),
      local: 'en-US',
      platform: 'mobile',
      isDevMode: true,
      isTestMode: true,
    );
    // Fetch indexes of localized resources.
    await api.getLocalizeIndexList().then((value) async {
      if (value.data?.isNotEmpty == true) {
        // Fetch resources and write them into asset directory.
        await _fetchLocalizedResources(value);
      }
      // At this point we have a valid NStackApiConfig.
      // Write NStackApiConfig to asset directory.
      await NStackConfigGenerator(config).run();
    }).catchError((error, stackTrace) {
      print(error);
      print(stackTrace);
    });

    // TODO: Add nstack dependency to pubspec.yaml file.
    // TODO: Add asset directory to pubspec.yaml file.
  }

  Future<void> _fetchLocalizedResources(
    LocalizeIndexList localizeIndexList,
  ) async {
    await Future.forEach<LocalizeIndex>(localizeIndexList.data!, (value) async {
      await _fetchLocalizedResource(value.id!);
    }).onError((error, stackTrace) {
      print(error);
      print(stackTrace);
    });
  }

  Future<void> _fetchLocalizedResource(int id) async {
    await api.getLocalizeResource(id: id).then((value) async {
      // Write localized resource into to asset directory.
      await LocalizationResourceGenerator(value).run();
      // Write localization class into lib directory.
      // TODO: https://nodesagency.atlassian.net/browse/NSTACK-321
      // if (value.meta?.language?.isDefault == true) {
      if (value.meta?.language?.id == 56) {
        await LocalizationClassGenerator(value).run();
      }
    });
  }
}
