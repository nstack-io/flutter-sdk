import 'package:data/entities/localize_resource.dart';

extension LocalizationResourceExtension on LocalizeResource {
  /// Returns the localized [String] nor [Null].
  String getLocalizedSectionKey(String section, String key) {
    return this.data[section][key];
  }
}
