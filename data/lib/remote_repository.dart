import 'package:data/models/app_open.dart';
import 'package:data/models/localize_index.dart';
import 'package:data/models/localize_resource.dart';

abstract class RemoteRepository {
  // POST ​/api​/v2​/open
  Future<AppOpen> postAppOpen();

  // GET ​/api​/v2​/content​/localize​/resources​/platforms​/mobile
  Future<LocalizeIndex> getLocalization();

  // GET /api/v2/content/localize/resources/{id}}
  Future<LocalizeResource> getLocalizationResource(
    int id,
  );
}
