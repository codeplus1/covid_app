import 'package:covid_app/view/dashboard.dart';
import 'package:covid_app/view/splash.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(data: (brightness) {
      return ThemeData(
          primaryColor: primaryBlack,
          brightness: brightness == Brightness.light
              ? Brightness.light
              : Brightness.dark,
          scaffoldBackgroundColor: brightness == Brightness.dark
              ? Colors.blueGrey[900]
              : Colors.white);
    }, themedWidgetBuilder: (context, theme) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: primaryBlack,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Splash(),
      );
    });
  }
}
