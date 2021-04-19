import 'package:nstack_api/entities/app_open_request_body.dart';
import 'package:nstack_api/entities/localize_language_list.dart';
import 'package:nstack_api/entities/nstack_api_headers.dart';
import 'package:nstack_api/entities/nstack_target.dart';

import 'entities/app_open.dart';
import 'entities/localize_index_list.dart';
import 'entities/localize_resource.dart';

/// TODO: Docs
abstract class NStackAPI {
//<editor-fold desc="Localize">

  Future<LocalizeLanguageList> getLocalizeLanguageList({
    required NStackApiHeaders headers,
    required NStackTarget target,
  });

  // TODO: Docs
  Future<LocalizeIndexList> getLocalizeIndexList({
    required NStackApiHeaders headers,
    bool isDevMode = false,
  });

  // TODO: Docs
  Future<LocalizeResource> getLocalizeResource({
    required NStackApiHeaders headers,
    required int id,
  });

//</editor-fold>

//<editor-fold desc="App open">

  // TODO: Docs
  Future<AppOpen> postAppOpen({
    required NStackApiHeaders headers,
    required AppOpenRequestBody body,
    bool isDevMode = false,
    bool isTestMode = false,
  });

//</editor-fold>

}
