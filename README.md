<p align="center">
<img src="https://avatars0.githubusercontent.com/u/52704796" alt="NStack"/>
</p>

# NStack Flutter

[NStack] Flutter, provided as a plugin package, is a companion software development kit to the [NStack] backend.

See [NStack documentation](https://nstack-io.github.io/docs/docs/guides/flutter/flutter.html) for more information.


# How to use

## Install

:warning:  **WORK IN PROGRESS**  :warning:

Note: For now, all instructions below are tailored to the [nstack_sdk_example] project.

To use [NStack], install [nstack_cli]:

```console
$ flutter pub global activate --source path nstack_cli
```

Navigate into the [nstack_sdk_example] project:

```console
$ cd nstack_sdk/example
```

Now execute following command to initialize NStack:

```console
$ flutter pub global run nstack_cli init
```

A successful execution generates following files:
* `assets/nstack/nstack.json` your NStack configuration file
* `assets/nstack/en-EN.json` a localized resource
* `assets/nstack/de-AT.json` another localized resource
* `lib/nstack/localization.dart` a class holding all keys for accessing localization

Now apply following changes to your `pubspec.yaml` file:

```yaml
dependencies:
  nstack_sdk:
    path: ../

flutter:
  assets:
    - assets/nstack/
```

That's it! Execute following command to check your NStack configuration:

```console
$ flutter pub global run nstack_cli doctor
```

## Example
TODO:

Import your `nstack.dart` file and plant your `NStackWidget` at the root of your application.\
Use `NStackInitWidget` for submitting [AppOpen] events.

```dart
import 'package:flutter/material.dart';
import 'package:nstack_example/nstack_cli.dart';

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

[NStack]: https://nstack.io
[AppOpen]: https://nstack-io.github.io/docs/docs/app-open.html
[nstack_cli]: /nstack_cli
[nstack_sdk_example]: /nstack_sdk/example