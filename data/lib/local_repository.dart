import 'package:data/entities/localize_resource_list.dart';

abstract class LocalRepository {
  Future<void> setLocalization(
    LocalizeResourceList localization,
  );

  Future<LocalizeResourceList> getLocalization();
}
