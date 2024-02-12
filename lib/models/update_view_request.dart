// Definition of UpdateViewAnswer
enum UpdateViewAnswer {
  yes,
  no,
}

// Definition of UpdateViewType
enum UpdateViewType {
  newerVersion,
  newInVersion;

  String toJson() {
    return switch (this) {
      newerVersion => 'newer_version',
      newInVersion => 'new_in_version',
    };
  }
}

// Definition of UpdateViewRequest
class UpdateViewRequest {
  final String guid;
  final String updateId;
  final UpdateViewAnswer answer;
  final UpdateViewType type;

  UpdateViewRequest({
    required this.guid,
    required this.updateId,
    required this.answer,
    required this.type,
  });

  // Convert the instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'guid': guid,
      'update_id': updateId,
      'answer': answer.name,
      'type': type.toJson(),
    };
  }
}
