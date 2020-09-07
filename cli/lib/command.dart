class DoctorCommand {
  static const String name = 'doctor';

  final bool verbose;

  DoctorCommand({
    this.verbose = false,
  });
}

class HelpCommand {
  static const String name = 'help';
}
