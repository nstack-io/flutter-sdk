import 'package:data/entities/app_open.dart';
import 'package:data/entities/language_list.dart';
import 'package:data/entities/localize_index.dart';
import 'package:data/entities/localize_resource.dart';
import 'package:data/entities/nstack_app_open_data.dart';
import 'package:meta/meta.dart';

abstract class RemoteRepository {
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
