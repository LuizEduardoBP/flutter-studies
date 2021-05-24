import 'package:flutter/material.dart';
import 'package:my_app/app_controlller.dart';
import 'package:my_app/login.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: AppController.instance.darkTheme
                ? ThemeData.dark()
                : ThemeData.light(),
            initialRoute: "/",
            routes: {
              "/": (context) => Login(),
              "/home": (context) => HomePage(),
            },
          );
        });
  }
}
