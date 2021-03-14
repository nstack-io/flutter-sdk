import 'package:meta/meta.dart';
import 'package:nstack_api/entities/app_open_request_body.dart';
import 'package:nstack_api/entities/localize_language_list.dart';

import 'entities/app_open.dart';
import 'entities/localize_index_list.dart';
import 'entities/localize_resource.dart';

/// TODO: Docs
abstract class NStackAPI {
//<editor-fold desc="Localize">

  // TODO: Docs
  Future<LocalizeLanguageList> getLocalizeLanguageList();

  // TODO: Docs
  Future<LocalizeIndexList> getLocalizeIndexList();

  // TODO: Docs
  Future<LocalizeResource> getLocalizeResource({
    @required int id,
  });

//</editor-fold>

//<editor-fold desc="App open">

  // TODO: Docs
  Future<AppOpen> postAppOpen({
    @required AppOpenRequestBody body,
  });

//</editor-fold>

}
