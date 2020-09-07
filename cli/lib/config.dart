class Config {
  final String id;
  final String key;

  Config(
    this.id,
    this.key,
  );

  Config.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        key = json['key'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
      };
}
