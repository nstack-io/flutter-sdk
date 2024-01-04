import 'package:flutter/material.dart';

import 'nstack.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return NStackWidget(
          child: child!,
        );
      },
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final activeLanguage = context.nstack.localization.activeLanguage;

    return NStackMessageListener(
      onMessage: (message) {
        NStackMessageDialog.show(context, message: message);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.localization.test.testDollarSign),
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () {
              final locale = activeLanguage.locale == 'en-EN'
                  ? const Locale('de-DE')
                  : const Locale('en-EN');

              NStack.localization.changeLocalization(locale);
            },
            child: Text(
              'Selected locale: ${activeLanguage.name}',
            ),
          ),
        ),
      ),
    );
  }
}
