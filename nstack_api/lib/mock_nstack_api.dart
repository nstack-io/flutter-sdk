import 'package:nstack_api/entities/app_open.dart';
import 'package:nstack_api/entities/app_open_request_body.dart';
import 'package:nstack_api/entities/localize_language_list.dart';
import 'package:nstack_api/entities/localize_index_list.dart';
import 'package:nstack_api/entities/localize_resource.dart';
import 'package:nstack_api/nstack_api.dart';

/// TODO: Docs
class MockNStackApi implements NStackAPI {
  @override
  Future<LocalizeLanguageList> getLocalizeLanguageList() {
    // TODO: implement getLanguageList
    throw UnimplementedError();
  }

  @override
  Future<LocalizeIndexList> getLocalizeIndexList() {
    // TODO: implement getLocalizeIndexList
    throw UnimplementedError();
  }

  @override
  Future<LocalizeResource> getLocalizeResource({
    int? id,
  }) {
    // TODO: implement getLocalizeResource
    throw UnimplementedError();
  }

  @override
  Future<AppOpen> postAppOpen({AppOpenRequestBody? body}) {
    // TODO: implement postAppOpen
    throw UnimplementedError();
  }
}
