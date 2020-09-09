import 'package:meta/meta.dart';

import 'entities/app_open.dart';
import 'entities/language_list.dart';
import 'entities/localize_index.dart';
import 'entities/localize_resource.dart';
import 'entities/nstack_app_open_data.dart';

abstract class NStackAPI {
  // POST ​/api​/v2​/open
  Future<AppOpen> postAppOpen({
    @required String acceptHeader,
    @required NStackAppOpenData appOpenData,
    @required bool devMode,
    @required bool testMode,
  });

  // GET ​/api​/v2​/content​/localize​/resources​/platforms​/mobile
  Future<LocalizeIndex> getLocalization();

  // GET /api/v2/content/localize/resources/{id}}
  Future<LocalizeResource> getLocalizationResource(
    int id,
  );

  Future<LanguageList> getAvailableLanguages();
}
