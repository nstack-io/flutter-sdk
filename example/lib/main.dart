import 'package:flutter/material.dart';
import 'package:nstack/nstack.dart';
import 'package:provider/provider.dart';
import 'nstack.dart';

void main() {
  runApp(NStackWidget(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Consumer<NStack<Localization>>(
        builder: (context, nstack, child) {
          return Text(context.localization.defaultSection.title);
        }
    );

    return MaterialApp(
      home: NStackInitWidget(
        child: Scaffold(
          appBar: AppBar(
            title: Consumer<NStack<Localization>>(
                builder: (context, nstack, child) {
                  return Text(context.localization.defaultSection.test);
                }
            ),
          ),
          body: Center(
            child: MaterialButton(onPressed: () => {
              NStackWidget.of(context).changeLocalizationOffline(Locale("de-DE"))
            }, child: Consumer<NStack<Localization>>(
                builder: (context, nstack, child) {
                  return Text("Selected locale: ${NStackWidget.of(context).activeLanguage.name}");
                }
            ),),
          ),
        ),
      ),
    );
  }
}
