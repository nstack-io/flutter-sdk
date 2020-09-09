import 'package:api/entities/app_config.dart';
import 'package:api/entities/language_list.dart';
import 'package:api/entities/localize_resource.dart';
import 'package:api/entities/runtime_config.dart';
import 'package:api/entities/timestamp.dart';

abstract class LocalRepository {

  Future<void> setHasBundledLocalizeResources(bool hasBundledLocalizeResources);

  Future<bool> getHasBundledLocalizeResources();

  // LocalizeResource

  Future<void> setLocalizeResource(LocalizeResource localizeResource);

  Future<LocalizeResource> getLocalizeResource(int localizeResourceId);

  Future<void> deleteLocalizeResource(LocalizeResource localizeResource);

  //

  Future<void> setAvailableLanguages(LanguageList languages);

  Future<LanguageList> getAvailableLanguages();

  Future<void> setGuid(String guid);

  Future<String> getGuid();

  Future<void> setRuntimeConfig(RuntimeConfig config);

  Future<RuntimeConfig> getRuntimeConfig();

  Future<void> setAppConfig(AppConfig config);

  Future<AppConfig> getAppConfig();

  Future<void> setLastAppOpenTimestamp(Timestamp timestamp);

  Future<Timestamp> getLastAppOpenTimeStamp();
}
