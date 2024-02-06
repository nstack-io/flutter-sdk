import 'package:flutter/material.dart';

import 'package:example/nstack.dart';

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
    final localization = context.localization;
    final localizationAsset = localization.assets;
    final activeLanguage = localization.activeLanguage;

    // Message option for receiving the Message response, will not show the default dialog.
    // void onMessage(Message message) {
    //   if (kDebugMode) {
    //     print(message.message);
    //   }
    // }

    // final customNstackHandlerConfiguration =
    //     CustomNstackHandlerConfiguration(onMessage: onMessage);

    // Message option for showing default dialog.
    final defaultHandlerConfiguration = DefaultNstackHandlerConfiguration(
      okButtonTitle: localizationAsset.test.okButtonTitle,
      openUrlButtonTitle: localizationAsset.test.openUrlButtonTitle,
      dialogTitle: localizationAsset.test.dialogTitle,
    );

    return NStackVersionControlWidget(
      child: NStackMessageWidget(
        handlerConfiguration: defaultHandlerConfiguration,
        child: Scaffold(
          appBar: AppBar(
            title: Text(localizationAsset.test.testDollarSign),
          ),
          body: Center(
            child: MaterialButton(
              onPressed: () {
                final locale = activeLanguage.locale == 'en-EN'
                    ? const Locale('de-AT')
                    : const Locale('en-EN');
                localization.changeLocalization(locale);
              },
              child: Text(
                'Selected locale: ${activeLanguage.name}',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
