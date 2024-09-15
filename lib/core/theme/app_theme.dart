import 'package:flutter/material.dart';

enum AppTheme {
  blueLight('Blue Light'),
  blueDark('Blue Dark'),
  redDark('Blue Dark');

  final String name;
  const AppTheme(this.name);
}

//map
final appThemeData = {
  AppTheme.blueLight: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  AppTheme.blueDark: ThemeData(
    appBarTheme:
        const AppBarTheme(backgroundColor: Color.fromARGB(255, 6, 60, 114)),
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
  ),
  AppTheme.redDark: ThemeData(
    appBarTheme:
        const AppBarTheme(backgroundColor: Color.fromARGB(255, 201, 4, 4)),
    brightness: Brightness.dark,
    primaryColor: Colors.red[700],
  )
};
