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
dependencies:
  nstack:
    git:
      url: git://github.com/nstack-io/flutter-sdk.git
      ref: v0.5.1

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
  "version": 1,
  "nstack_project_id": "YOUR_PROJECT_ID",
  "nstack_api_key": "YOUR_REST_API_KEY"
}
```

Now, depending on your use case you have two possibilities to run the generator:

If your package depends on Flutter execute:
```console
foo@bar:~$ flutter pub run build_runner build
```
Otherwise execute:
```console
foo@bar:~$ pub run build_runner build
```

A successful execution generates your project tailored `nstack.dart` file.\
See example below on how to use your NStack instance.

### Incremental updates
To run a persistent build server that watches `nstack.json` to automatically trigger rebuilds execute:

```console
foo@bar:~$ flutter pub run build_runner watch --delete-conflicting-outputs
``` 

Now increment the `"version"` number and save (⌘s) to trigger an update.


## Example

Import your `nstack.dart` file and plant your `NStackWidget` in the builder of your application.

```dart
import 'package:flutter/material.dart';
import 'package:nstack_example/nstack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return NStackWidget(
          child: child!,
        );
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text(context.localization.test.title),
        ),
      ),
    );
  }
}
```

[build_runner]: https://pub.dev/packages/build_runner
[NStack]: https://nstack.io
[AppOpen]: https://nstack-io.github.io/docs/docs/app-open.html
