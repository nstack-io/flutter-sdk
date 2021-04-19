import 'package:nstack_api/entities/localize_index.dart';
import 'package:nstack_api/entities/localize_index_list.dart';
import 'package:nstack_api/entities/n_meta.dart';
import 'package:nstack_api/entities/nstack_api_headers.dart';
import 'package:nstack_api/nstack_api.dart';
import 'package:nstack_cli/src/code_generation/localization_class_generator.dart';
import 'package:nstack_cli/src/code_generation/localization_resource_generator.dart';
import 'package:nstack_cli/src/code_generation/nstack_config_generator.dart';
import 'package:nstack_cli/src/data/entities/nstack_config.dart';
import 'package:nstack_cli/src/update/update_command.dart';

import '../interactor.dart';

class UpdateInteractor implements FutureInteractor<void> {
  final NStackAPI api;
  final NMeta nMeta;
  late NStackApiHeaders headers;

  UpdateInteractor({
    required this.api,
    required this.nMeta,
  });

  @override
  Future<void> execute({UpdateCommand? command}) async {
    // TODO: Validate current path. Path needs to be at the root of a Flutter project.

    // Obtain nstack config.
    final config = await getNStackConfig();
    if (config.restApiKey.isEmpty || config.applicationId.isEmpty) {
      print(
          'No NStack configuration found. Did you mean to run nstack_cli init?');
    }

    headers = NStackApiHeaders(
      acceptLanguage: 'en-US',
      applicationId: config.applicationId,
      restApiKey: config.restApiKey,
      nMeta: nMeta,
    );

    // Fetch indexes of localized resources.
    await api.getLocalizeIndexList(headers: headers).then((value) async {
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
    await api.getLocalizeResource(headers: headers, id: id).then((value) async {
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
