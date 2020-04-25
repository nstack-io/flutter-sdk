<p align="center">
<img src="https://avatars0.githubusercontent.com/u/52704796" alt="NStack"/>
</p>

# NStack Flutter

[NStack] Flutter, provided as a plugin package, is a companion software development kit to the [NStack](https://nstack.io) backend.

See [NStack documentation](https://nstack-io.github.io/docs/docs/guides/flutter/flutter.html) for more information.

# How to use

## Install

To use [NStack], you will need your typical [build_runner]/code-generator setup.\
First, install [build_runner] and [NStack] by adding them to your `pubspec.yaml` file:

```yaml
# pubspec.yaml
dependencies:
  nstack:

dev_dependencies:
  build_runner:
```

This installs two packages:

- build_runner, the tool to run code-generators
- [NStack] SDK, which includes a code generator

## Run the generator

Depending on your use case you have two possibilities:

- `flutter pub pub run build_runner build`, if your package depends on Flutter
- `pub run build_runner build` otherwise