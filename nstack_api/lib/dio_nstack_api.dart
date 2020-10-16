import 'package:meta/meta.dart';
import 'package:nstack_api/entities/app_open.dart';
import 'package:nstack_api/entities/app_open_request_body.dart';
import 'package:nstack_api/entities/language_list.dart';
import 'package:nstack_api/entities/localize_index.dart';
import 'package:nstack_api/entities/localize_resource.dart';
import 'package:nstack_api/entities/n_meta.dart';
import 'package:nstack_api/entities/nstack_api_config.dart';
import 'package:nstack_api/nstack_api.dart';

class DioNStackApi implements NStackAPI {
  final NStackApiConfig config;
  final NMeta meta;

  DioNStackApi({
    @required this.config,
    @required this.meta,
  });

  @override
  Future<LanguageList> getAvailableLanguages() {
    // TODO: implement getAvailableLanguages
    throw UnimplementedError();
  }

  @override
  Future<LocalizeIndex> getLocalization() {
    // TODO: implement getLocalization
    throw UnimplementedError();
  }

  @override
  Future<LocalizeResource> getLocalizationResource({
    int id,
  }) {
    // TODO: implement getLocalizationResource
    throw UnimplementedError();
  }

  @override
  Future<AppOpen> postAppOpen(
      {AppOpenRequestBody body, bool isDevMode, bool isTestMode}) {
    // TODO: implement postAppOpen
    throw UnimplementedError();
  }
}
