class Option {
  final String name;

  Option(this.name);

  String get short {
    try {
      return '-${name[0]}';
    } catch (error) {
      return '-';
    }
  }

  String get long {
    return '--$name';
  }

  bool isPresent(List<String> arguments) {
    return arguments.contains(short) || arguments.contains(long);
  }
}
