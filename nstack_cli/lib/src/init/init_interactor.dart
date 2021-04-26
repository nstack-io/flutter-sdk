import 'dart:io';

import 'package:nstack_api/entities/localize_index_list.dart';
import 'package:nstack_api/entities/n_meta.dart';
import 'package:nstack_api/entities/nstack_api_headers.dart';
import 'package:nstack_api/nstack_api.dart';
import 'package:nstack_cli/src/code_generation/localization_class_generator.dart';
import 'package:nstack_cli/src/code_generation/localization_resource_generator.dart';
import 'package:nstack_cli/src/code_generation/nstack_config_generator.dart';
import 'package:nstack_cli/src/data/entities/nstack_config.dart';

import '../interactor.dart';
import 'init_command.dart';

class InitInteractor implements FutureInteractor<void> {
  final NStackAPI api;
  final NMeta nMeta;
  late NStackApiHeaders headers;

  InitInteractor({
    required this.api,
    required this.nMeta,
  });

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
    final config = NStackConfig(
      applicationId: applicationId,
      restApiKey: apiKey,
    );

    headers = NStackApiHeaders(
      acceptLanguage: 'en-US',
      applicationId: applicationId,
      restApiKey: apiKey,
      nMeta: nMeta,
    );

    // Fetch indexes of localized resources.
    await api.getLocalizeIndexList(headers: headers).then((value) async {
      if (value.data?.isNotEmpty == true) {
        // Fetch default language resources and write them into asset directory.
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
    final defaultLocalizeIndex = localizeIndexList.data
        ?.firstWhere((element) => element.language?.isDefault == true);
    if (defaultLocalizeIndex?.id == null) {
      print('Default language not found. Localization not available.');
    } else {
      await _fetchLocalizedResource(defaultLocalizeIndex!.id!);
    }
  }

  Future<void> _fetchLocalizedResource(int id) async {
    await api.getLocalizeResource(headers: headers, id: id).then((value) async {
      // Write localized resource into to asset directory.
      await LocalizationResourceGenerator(value).run();
      // Write localization class into lib directory.
      await LocalizationClassGenerator(value).run();
    });
  }
}
