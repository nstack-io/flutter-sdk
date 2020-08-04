import 'package:data/entities/app_open.dart';
import 'package:data/entities/localize_index.dart';
import 'package:data/entities/localize_resource.dart';

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
