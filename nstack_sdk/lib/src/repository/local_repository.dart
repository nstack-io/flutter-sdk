import 'package:nstack_api/entities/app_config.dart';
import 'package:nstack_api/entities/app_open.dart';
import 'package:nstack_api/entities/language_list.dart';
import 'package:nstack_api/entities/localize_resource.dart';
import 'package:nstack_api/entities/runtime_config.dart';
import 'package:nstack_api/entities/timestamp.dart';

/// A disk storage for preserving data or state over multiple user sessions.
abstract class LocalRepository {
  /// Stores the current [LocalizeResource] which should be presented to a user.
  Future<void> setLocalizeResource(LocalizeResource localizeResource);

  /// Returns the current [LocalizeResource] which should be presented to a user.
  Future<LocalizeResource> getLocalizeResource(int localizeResourceId);

  /// Stores current available languages.
  Future<void> setLanguages(LanguageList languages);

  /// Get current available languages.
  Future<LanguageList> getLanguages();

  /// Stores the identifier for this app instance (user device).
  Future<void> setGuid(String guid);

  /// Get the identifier for this app instance (user device).
  Future<String> getGuid();

  /// Stores current [RuntimeConfig]].
  Future<void> setRuntimeConfig(RuntimeConfig config);

  /// Get current [RuntimeConfig]].
  Future<RuntimeConfig> getRuntimeConfig();

  /// Stores current [RuntimeConfig]].
  Future<void> setAppConfig(AppConfig config);

  /// Get current [RuntimeConfig]].
  Future<AppConfig> getAppConfig();

  /// Stores the timestamp of the last successful [AppOpen] call.
  Future<void> setLastAppOpenTimestamp(Timestamp timestamp);

  /// Get the timestamp of the last successful [AppOpen] call.
  Future<Timestamp> getLastAppOpenTimeStamp();
}
