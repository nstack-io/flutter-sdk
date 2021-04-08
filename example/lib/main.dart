import 'package:flutter/material.dart';
import 'nstack.dart';

void main() {
  runApp(NStackWidget(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NStackInitWidget(child: Scaffold(
        appBar: AppBar(
          title: Text(context.localization.defaultSection.title),
        ),
        body: Center(
          child: Text(context.localization.test.testMultipleLines),
        ),
      ),
    ),
    );
  }
}
