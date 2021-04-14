<p align="center">
<img src="https://avatars0.githubusercontent.com/u/52704796" alt="NStack"/>
</p>

# NStack Flutter

[NStack] Flutter, provided as a plugin package, is a companion software development kit to the [NStack] backend.

See [NStack documentation](https://nstack-io.github.io/docs/docs/guides/flutter/flutter.html) for more information.


# How to use

## Install

:warning:  WORK IN PROGRESS  :warning:

Note: For now, all instructions below are tailored to the nstack_sdk_example project.

To use [NStack], install our nstack_cli:

```
$ flutter pub global activate --source path nstack_cli
$ flutter pub global run nstack_cli --help
```

Create a `nstack.json` file:

```json
{
  "nstack_project_id": "YOUR_PROJECT_ID",
  "nstack_api_key": "YOUR_REST_API_KEY"
}
```

Now, execute following command to initialize or update your NStack setup.

```
$ flutter pub global run nstack_cli update
```

A successful execution generates your project tailored `nstack.dart` file.\
See example below on how to use your NStack instance.

## Example

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