import 'package:flutter/material.dart';

import 'nstack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return NStackWidget(
          platformOverride: AppOpenPlatform.android,
          child: child!,
        );
      },
      home: MainScreen(),
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
