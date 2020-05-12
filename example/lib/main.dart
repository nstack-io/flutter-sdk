import 'package:flutter/material.dart';
import 'package:nstack_example/nstack.dart';

void main() {
  runApp(NStackWidget(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(context.localization.test.title),
        ),
        body: Center(
          child: Text(context.localization.defaultSection.hi),
        ),
      ),
    );
  }
}
