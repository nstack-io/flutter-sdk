import 'package:flutter/material.dart';
import 'nstack.dart';

void main() {
  runApp(NStackWidget(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // App open!
    NStackScope.of(context).nstack.appOpen(Localizations.localeOf(context));

    return Scaffold(
      appBar: AppBar(
        title: Text(context.localization.test.testDollarSign),
      ),
      body: Center(
        child: MaterialButton(onPressed: () async => {
          NStackScope.of(context).changeLanguage(Locale("de-DE"))
        },
          child: Text("Selected locale: ${NStackScope.of(context).nstack.activeLanguage.name}")
          ,),
      ),
    );
  }
}
