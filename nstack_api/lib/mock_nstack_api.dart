import 'package:nstack_api/entities/app_open.dart';
import 'package:nstack_api/entities/app_open_request_body.dart';
import 'package:nstack_api/entities/localize_index_list.dart';
import 'package:nstack_api/entities/localize_language_list.dart';
import 'package:nstack_api/entities/localize_resource.dart';
import 'package:nstack_api/entities/nstack_api_headers.dart';
import 'package:nstack_api/entities/nstack_target.dart';
import 'package:nstack_api/nstack_api.dart';

/// TODO: Docs
class MockNStackApi implements NStackAPI {
  @override
  Future<LocalizeIndexList> getLocalizeIndexList({
    required NStackApiHeaders headers,
    bool isDevMode = false,
  }) {
    // TODO: implement getLocalizeIndexList
    throw UnimplementedError();
  }

  @override
  Future<LocalizeLanguageList> getLocalizeLanguageList({
    required NStackApiHeaders headers,
    required NStackTarget target,
  }) {
    // TODO: implement getLocalizeLanguageList
    throw UnimplementedError();
  }

  @override
  Future<LocalizeResource> getLocalizeResource({
    required NStackApiHeaders headers,
    required int id,
  }) {
    // TODO: implement getLocalizeResource
    throw UnimplementedError();
  }

  @override
  Future<AppOpen> postAppOpen({
    required NStackApiHeaders headers,
    required AppOpenRequestBody body,
    bool isDevMode = false,
    bool isTestMode = false,
  }) {
    // TODO: implement postAppOpen
    throw UnimplementedError();
  }
}
