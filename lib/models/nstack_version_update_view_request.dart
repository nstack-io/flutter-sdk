// Definition of NStackVersionUpdateViewAnswer
enum NStackVersionUpdateViewAnswer {
  yes,
  no,
}

// Definition of NStackVersionUpdateViewType
enum NStackVersionUpdateViewType {
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
  final NStackVersionUpdateViewAnswer answer;
  final NStackVersionUpdateViewType type;

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
