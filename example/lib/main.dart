import 'package:flutter/material.dart';

import 'nstack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NStackWidget(
          platformOverride: AppOpenPlatform.android,
          child: MainScreen()
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localization.test.testDollarSign),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () async =>
              {NStackScope.of(context).changeLanguage(Locale("de-DE"))},
          child: Text(
              "Selected locale: ${NStackScope.of(context).nstack.activeLanguage.name}"),
        ),
      ),
    );
  }
}
