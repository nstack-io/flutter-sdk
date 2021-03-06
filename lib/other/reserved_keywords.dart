/// Utility class to check for reserved Dart keywords.
class DartKeywords {
  static const _list = [
    'abstract',
    'all',
    'as',
    'assert',
    'async',
    'await',
    'boolean',
    'break',
    'byte',
    'case',
    'catch',
    'char',
    'class',
    'const',
    'continue',
    'covariant',
    'default',
    'deferred',
    'description',
    'do',
    'double',
    'dynamic',
    'else',
    'enum',
    'export',
    'extends',
    'extension',
    'external',
    'factory',
    'false',
    'final',
    'finally',
    'float',
    'for',
    'Function',
    'get',
    'goto',
    'hide',
    'if',
    'implements',
    'import',
    'in',
    'instanceof',
    'int',
    'interface',
    'is',
    'library',
    'long',
    'mixin',
    'native',
    'new',
    'null',
    'on',
    'operator',
    'package',
    'part',
    'private',
    'protected',
    'public',
    'rethrow',
    'return',
    'set',
    'short',
    'show',
    'static',
    'strictfp',
    'struct',
    'super',
    'switch',
    'sync',
    'synchronized',
    'this',
    'throw',
    'throws',
    'transient',
    'try',
    'typedef',
    'var',
    'void',
    'volatile',
    'while',
    'with',
    'yield',
  ];

  static bool isReserved(String keyword) => _list.contains(keyword);
}
