import 'package:flutter/material.dart';
import 'package:nstack_sdk/nstack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NStack(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TODO'),
          ),
        ),
      ),
    );
  }
}
