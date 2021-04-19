import 'package:nstack_api/entities/localize_resource.dart';

/// A in-memory cache for retrieving speed critical data or state.
abstract class CacheRepository {
  /// Stores the current [LocalizeResource] which should be presented to a user.
  void setLocalizeResource(LocalizeResource localizeResource);

  /// Returns the current [LocalizeResource] which should be presented to a user.
  LocalizeResource getLocalizeResource();
}
