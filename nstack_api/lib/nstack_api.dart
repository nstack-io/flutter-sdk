import 'package:meta/meta.dart';

import 'entities/app_open.dart';
import 'entities/app_open_data.dart';
import 'entities/language_list.dart';
import 'entities/localize_index.dart';
import 'entities/localize_resource.dart';

abstract class NStackAPI {
  // TODO
  Future<AppOpen> postAppOpen({
    @required String acceptHeader,
    @required AppOpenData appOpenData,
    @required bool devMode,
    @required bool testMode,
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
