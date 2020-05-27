<p align="center">
<img src="https://avatars0.githubusercontent.com/u/52704796" alt="NStack"/>
</p>

# NStack Flutter

[NStack] Flutter, provided as a plugin package, is a companion software development kit to the [NStack] backend.

See [NStack documentation](https://nstack-io.github.io/docs/docs/guides/flutter/flutter.html) for more information.

# How to use

## Install

To use [NStack], you will need your typical [build_runner] setup.\
First, install [build_runner] and [NStack] by adding them to your `pubspec.yaml` file:

```yaml
# pubspec.yaml
dependencies:
  nstack:
    git:
      url: git@github.com/nstack-io/flutter-sdk.git

dev_dependencies:
  build_runner:
```

This installs two packages:

- [build_runner], the tool to run code-generators
- [NStack] SDK, which includes a code generator

## Run the generator

Create a `nstack.json` file under `/lib` that holds your NStack details:

```json
{
  "nstack_project_id": "YOUR_PROJECT_ID",
  "nstack_api_key": "YOUR_API_KEY"
}
```

Now, depending on your use case you have two possibilities to run the generator:

- `flutter pub pub run build_runner build`, if your package depends on Flutter
- `pub run build_runner build` otherwise

A successful execution generates your project tailored `nstack.dart` file.\
See example below on how to use your NStack instance.

## Example

Import your `nstack.dart` file and plant your `NStackWidget` at the root of your application.\
Use `NStackInitWidget` for submitting [AppOpen] events.

```dart
import 'package:flutter/material.dart';
import 'package:nstack_example/nstack.dart';

void main() {
  runApp(NStackWidget(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NStackInitWidget(
        child: Scaffold(
          appBar: AppBar(
            title: Text(context.localization.test.title),
          ),
        ),
      ),
    );
  }
}
```

[build_runner]: https://pub.dev/packages/build_runner
[NStack]: https://nstack.io
[AppOpen]: https://nstack-io.github.io/docs/docs/app-open.html