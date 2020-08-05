import 'package:data/entities/app_config.dart';
import 'package:data/entities/language_list.dart';
import 'package:data/entities/localize_resource_list.dart';
import 'package:data/entities/runtime_config.dart';
import 'package:data/entities/timestamp.dart';

abstract class LocalRepository {
  Future<void> setLocalization(
    LocalizeResourceList localization,
  );

  Future<LocalizeResourceList> getLocalization();

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
