// Definition of NStackVersionUpdateState enum.
enum NStackVersionUpdateState {
  disabled,
  remind,
  force,
  unknown;

  // Factory constructor to create an instance from a string value.
  factory NStackVersionUpdateState.fromRaw(String raw) {
    return switch (raw) {
      'no' => NStackVersionUpdateState.disabled,
      'yes' => NStackVersionUpdateState.remind,
      'force' => NStackVersionUpdateState.force,
      _ => NStackVersionUpdateState.unknown,
    };
  }
}

// Definition of NStackVersionUpdate class.
class NStackVersionUpdate {
  final NStackVersionChangelog? newInThisVersion;
  final NStackVersion? newerVersion;

  NStackVersionUpdate({this.newInThisVersion, this.newerVersion});

  // Factory constructor for creating an instance from a JSON map.
  factory NStackVersionUpdate.fromJson(Map<String, dynamic> json) =>
      NStackVersionUpdate(
        newInThisVersion: json['new_in_version'] != null
            ? NStackVersionChangelog.fromJson(json['new_in_version'])
            : null,
        newerVersion: json['newer_version'] != null
            ? NStackVersion.fromJson(json['newer_version'])
            : null,
      );
}

// Definition of NStackVersionUpdateLocalizations class.
class NStackVersionUpdateLocalizations {
  final String title;
  final String message;
  final String? positiveBtn;
  final String? negativeBtn;
  final String? okBtn;

  NStackVersionUpdateLocalizations({
    required this.title,
    required this.message,
    this.positiveBtn,
    this.negativeBtn,
    this.okBtn,
  });

  // Factory constructor for creating an instance from a JSON map.
  factory NStackVersionUpdateLocalizations.fromJson(
    Map<String, dynamic> json,
  ) =>
      NStackVersionUpdateLocalizations(
        title: json['title'],
        message: json['message'],
        positiveBtn: json['positiveBtn'],
        negativeBtn: json['negativeBtn'],
        okBtn: json['okBtn'],
      );
}

// Definition of NStackVersionChangelog class.
class NStackVersionChangelog {
  final bool state;
  final int lastId;
  final String version;
  final NStackVersionUpdateLocalizations localizations;

  NStackVersionChangelog({
    required this.state,
    required this.lastId,
    required this.version,
    required this.localizations,
  });

  // Factory constructor for creating an instance from a JSON map.
  factory NStackVersionChangelog.fromJson(Map<String, dynamic> json) =>
      NStackVersionChangelog(
        state: json['state'],
        lastId: json['last_id'],
        version: json['version'],
        localizations:
            NStackVersionUpdateLocalizations.fromJson(json['translate']),
      );
}

// Definition of NStackVersion class.
class NStackVersion {
  final NStackVersionUpdateState state;
  final int lastId;
  final String version;
  final NStackVersionUpdateLocalizations localizations;
  final Uri? link;

  NStackVersion({
    required this.state,
    required this.lastId,
    required this.version,
    required this.localizations,
    this.link,
  });

  // Factory constructor for creating an instance from a JSON map.
  factory NStackVersion.fromJson(Map<String, dynamic> json) => NStackVersion(
        state: NStackVersionUpdateState.fromRaw(json['state']),
        lastId: json['last_id'],
        version: json['version'],
        localizations:
            NStackVersionUpdateLocalizations.fromJson(json['translate']),
        link: json['link'] != null ? Uri.parse(json['link']) : null,
      );
}
