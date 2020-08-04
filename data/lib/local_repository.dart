import 'package:data/models/localize_resource_list.dart';

abstract class LocalRepository {
  Future<void> setLocalization(
    LocalizeResourceList localization,
  );

  Future<LocalizeResourceList> getLocalization();
}
