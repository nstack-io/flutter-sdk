import 'dart:io';

import 'package:yaml/yaml.dart';

import '../lib/build/build_command.dart';
import '../lib/build/build_interactor.dart';
import '../lib/doctor/doctor_command.dart';
import '../lib/doctor/doctor_interactor.dart';
import '../lib/help/help_command.dart';
import '../lib/option.dart';

void main(List<String> arguments) {
  if (arguments == null || arguments.isEmpty) {
    printHelp();
    return;
  }
  // Look for a command
  switch (arguments?.first) {
    case BuildCommand.name:
      return processBuildCommand(arguments);
    case HelpCommand.name:
      return processHelpCommand(arguments);
    case DoctorCommand.name:
      return processDoctorCommand(arguments);
  }
  // Look for a global option
  if (Option('help').isPresent(arguments)) {
    return printHelp();
  }
  if (Option('version').isPresent(arguments)) {
    return printVersion();
  }
  // No valid command or option found
  printUnknownArguments(arguments);
}

void processBuildCommand(List<String> arguments) async {
  await BuildInteractor().execute(
    command: BuildCommand(),
  );
}

void processDoctorCommand(List<String> arguments) async {
  final verbose = Option('verbose').isPresent(arguments);
  await DoctorInteractor().execute(
    command: DoctorCommand(verbose: verbose),
  );
}

void processHelpCommand(List<String> arguments) {
  // TODO
  print("Not implemented.");
}

void printUnknownArguments(List<String> arguments) {
  if (Option('').isPresent(arguments)) {
    printUnknownOption(arguments.first);
  } else {
    printUnknownCommand(arguments.first);
  }
}

void printUnknownOption(String option) => print("""
Could not find an option with name "$option".

Run 'nstack -h' (or 'nstack <command> -h') for available nstack commands and options.
""");

void printUnknownCommand(String command) => print("""
Could not find a command with name "$command".

Run 'nstack -h' (or 'nstack <command> -h') for available nstack commands and options.
""");

void printHelp() => print("""
Backend as a Service for Mobile & Web apps.
www.nstack.io
    
Global options:
-h, --help          Print this usage information.
    
Available commands:
  doctor            Show information about your NStack setup.
      
Run "nstack help <command>" for more information about a command.
Run "nstack help -v" for verbose help output.
""");

void printVersion() async {
  final version = await File("../pubspec.yaml").readAsString().then((text) {
    Map yaml = loadYaml(text);
    return yaml['version'];
  }).catchError((error) {
    return null;
  });
  print('NStack CLI $version');
}
