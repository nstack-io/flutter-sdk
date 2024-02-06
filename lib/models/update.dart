// Definition of UpdateState enum.
enum UpdateState {
  disabled,
  remind,
  force,
  unknown;

  // Factory constructor to create an instance from a string value.
  factory UpdateState.fromRaw(String raw) {
    return switch (raw) {
      'no' => UpdateState.disabled,
      'yes' => UpdateState.remind,
      'force' => UpdateState.force,
      _ => UpdateState.unknown,
    };
  }
}

// Definition of Update class.
class Update {
  final Changelog? newInThisVersion;
  final Version? newerVersion;

  Update({this.newInThisVersion, this.newerVersion});

  // Factory constructor for creating an instance from a JSON map.
  factory Update.fromJson(Map<String, dynamic> json) => Update(
        newInThisVersion: json['new_in_version'] != null
            ? Changelog.fromJson(json['new_in_version'])
            : null,
        newerVersion: json['newer_version'] != null
            ? Version.fromJson(json['newer_version'])
            : null,
      );
}

// Definition of UpdateLocalizations class.
class UpdateLocalizations {
  final String title;
  final String message;
  final String? positiveBtn;
  final String? negativeBtn;
  final String? okBtn;

  UpdateLocalizations({
    required this.title,
    required this.message,
    this.positiveBtn,
    this.negativeBtn,
    this.okBtn,
  });

  // Factory constructor for creating an instance from a JSON map.
  factory UpdateLocalizations.fromJson(Map<String, dynamic> json) =>
      UpdateLocalizations(
        title: json['title'],
        message: json['message'],
        positiveBtn: json['positiveBtn'],
        negativeBtn: json['negativeBtn'],
        okBtn: json['okBtn'],
      );
}

// Definition of Changelog class.
class Changelog {
  final bool state;
  final int lastId;
  final String version;
  final UpdateLocalizations localizations;

  Changelog({
    required this.state,
    required this.lastId,
    required this.version,
    required this.localizations,
  });

  // Factory constructor for creating an instance from a JSON map.
  factory Changelog.fromJson(Map<String, dynamic> json) => Changelog(
        state: json['state'],
        lastId: json['last_id'],
        version: json['version'],
        localizations: UpdateLocalizations.fromJson(json['translate']),
      );
}

// Definition of Version class.
class Version {
  final UpdateState state;
  final int lastId;
  final String version;
  final UpdateLocalizations localizations;
  final Uri? link;

  Version({
    required this.state,
    required this.lastId,
    required this.version,
    required this.localizations,
    this.link,
  });

  // Factory constructor for creating an instance from a JSON map.
  factory Version.fromJson(Map<String, dynamic> json) => Version(
        state: UpdateState.fromRaw(json['state']),
        lastId: json['last_id'],
        version: json['version'],
        localizations: UpdateLocalizations.fromJson(json['translate']),
        link: json['link'] != null ? Uri.parse(json['link']) : null,
      );
}
