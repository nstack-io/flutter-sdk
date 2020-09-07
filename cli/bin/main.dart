import 'dart:io';

import 'package:nstack/src/build/build_command.dart';
import 'package:nstack/src/build/build_interactor.dart';
import 'package:nstack/src/doctor/doctor_command.dart';
import 'package:nstack/src/doctor/doctor_interactor.dart';
import 'package:nstack/src/help/help_command.dart';
import 'package:nstack/src/option.dart';
import 'package:yaml/yaml.dart';

void main(List<String> arguments) {
  if (arguments == null || arguments.isEmpty) {
    _printHelp();
    return;
  }
  // Look for a command
  switch (arguments?.first) {
    case BuildCommand.name:
      return _processBuildCommand(arguments);
    case HelpCommand.name:
      return _processHelpCommand(arguments);
    case DoctorCommand.name:
      return _processDoctorCommand(arguments);
  }
  // Look for a global option
  if (Option('help').isPresent(arguments)) {
    return _printHelp();
  }
  if (Option('version').isPresent(arguments)) {
    return _printVersion();
  }
  // No valid command or option found
  _printUnknownArguments(arguments);
}

void _processBuildCommand(List<String> arguments) async {
  await BuildInteractor().execute(
    command: BuildCommand(),
  );
}

void _processDoctorCommand(List<String> arguments) async {
  final verbose = Option('verbose').isPresent(arguments);
  await DoctorInteractor().execute(
    command: DoctorCommand(verbose: verbose),
  );
}

void _processHelpCommand(List<String> arguments) {
  // TODO
  print("Not implemented.");
}

void _printUnknownArguments(List<String> arguments) {
  if (Option('').isPresent(arguments)) {
    _printUnknownOption(arguments.first);
  } else {
    _printUnknownCommand(arguments.first);
  }
}

void _printUnknownOption(String option) => print("""
Could not find an option with name "$option".

Run 'nstack -h' (or 'nstack <command> -h') for available nstack commands and options.
""");

void _printUnknownCommand(String command) => print("""
Could not find a command with name "$command".

Run 'nstack -h' (or 'nstack <command> -h') for available nstack commands and options.
""");

void _printHelp() => print("""
Backend as a Service for Mobile & Web apps.
www.nstack.io
    
Global options:
-h, --help          Print this usage information.
    
Available commands:
  doctor            Show information about your NStack setup.
      
Run "nstack help <command>" for more information about a command.
Run "nstack help -v" for verbose help output.
""");

void _printVersion() async {
  final version = await File("../pubspec.yaml").readAsString().then((text) {
    Map yaml = loadYaml(text);
    return yaml['version'];
  }).catchError((error) {
    return null;
  });
  print('NStack CLI $version');
}
