import 'dart:io';

import 'package:args/args.dart';
import 'package:logging/logging.dart';

/// Handles all the commands
void main(List<String> arguments) {
  Logger.root.level = Level.INFO; // defaults to Level.INFO
  recordStackTraceAtLevel = Level.ALL;
  Logger.root.onRecord.listen((record) {
    if (record.level == Level.SEVERE) {
      stderr.writeln('[${record.level.name}] ${record.message}');
    } else {
      stdout.writeln('[${record.level.name}] ${record.message}');
    }
  });
  exitCode = 0;

  final argResults = parseArguments(arguments);
  if (argResults == null) return;

  if (argResults.command == null) {
    processArgs(argResults.arguments);
  } else {
    switch (argResults.command.name) {
      case 'build':
        // TODO: processBuildCommand(argResults.command);
        break;
      case 'create':
        //TODO: processCreateCommand(argResults.command);
        break;
      default:
        exit_with(ERROR_COMMAND_NOT_FOUND);
    }
  }
}

/// Parses command-line arguments and returns results
ArgResults parseArguments(List<String> arguments) {
  final createParser = ArgParser()
    ..addFlag('json',
        help: 'generates json type of config file',
        negatable: false,
        abbr: 'j');

  final buildParser = ArgParser()
    ..addFlag('watch',
        abbr: 'w',
        negatable: false,
        help: 'Watches for any file changes and re-generates dart code')
    ..addFlag('smart-watch',
        negatable: false,
        help:
        'Smartly watches for file changes that matters and re-generates dart code')
    ..addFlag('verbose',
        abbr: 'v', negatable: false, help: 'prints verbose logs');

  final parser = ArgParser()
    ..addCommand('create', createParser)
    ..addCommand('build', buildParser)
    ..addFlag('help',
        abbr: 'h', help: 'prints usage information', negatable: false)
    ..addFlag('version', abbr: 'v', help: 'prints current version')
    ..addFlag('info', abbr: 'i', help: 'print library info', negatable: false)
    ..addFlag('check-updates',
        abbr: 'u', help: 'Check for update', negatable: false);
  try {
    var result = parser.parse(arguments);
    return result;
  } on Error catch (e) {
    exit_with(
        'Invalid command input. see spider --help for info.', e.stackTrace);
    return null;
  }
}

/// Called when no command is passed for spider
/// Process available options for spider executable
void processArgs(List<String> arguments) {
  if (arguments.contains('--help')) {
    printHelp();
  } else if (arguments.contains('--version')) {
    printVersion();
  } else if (arguments.contains('--info')) {
    printInfo();
  } else {
    printHelp();
  }
}

/// exits process with a message on command-line
void exit_with(String msg, [StackTrace stackTrace]) {
  error(msg, stackTrace);
  exitCode = 2;
  exit(2);
}

/// logs an error
void error(String msg, [StackTrace stackTrace]) =>
    Logger('Spider').log(Level('ERROR', 1100), msg, null, stackTrace);

/// prints library help
void printHelp() => stdout.writeln(HELP);

/// prints library info
void printInfo() => stdout.writeln(INFO);

/// prints library version
void printVersion() => stdout.writeln(VERSION);

/// constants
const String VERSION = '1.0.0';

const String HELP = '''
NSTACK:
  Some great help.
''';

const String INFO = '''
NSTACK:
  A small dart command-line tool for generating NStack assets.
  
  VERSION           $VERSION
  AUTHOR            Nodes
  HOMEPAGE          https://nstack.io
  SDK VERSION       2.6
  
  see nstacktooling --help for more available commands.
''';

const String ERROR_COMMAND_NOT_FOUND = 'No command found. Use NStack --help to see available commands';
