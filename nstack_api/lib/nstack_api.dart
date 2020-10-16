import 'package:meta/meta.dart';
import 'package:nstack_api/entities/app_open_request_body.dart';

import 'entities/app_open.dart';
import 'entities/language_list.dart';
import 'entities/localize_index.dart';
import 'entities/localize_resource.dart';

abstract class NStackAPI {
  // TODO
  Future<AppOpen> postAppOpen({
    @required AppOpenRequestBody body,
    @required bool isDevMode,
    @required bool isTestMode,
  });

  // TODO
  Future<LocalizeIndex> getLocalization();

  // TODO
  Future<LocalizeResource> getLocalizationResource({
    @required int id,
  });

  // TODO
  Future<LanguageList> getAvailableLanguages();
}
