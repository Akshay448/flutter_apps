import 'package:flutter/material.dart';

enum CurrentTheme { dark, light }


final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    unselectedWidgetColor: Colors.white,
    primaryTextTheme:
    const TextTheme(caption: TextStyle(color: Colors.white)));

final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    backgroundColor: Colors.white,
    unselectedWidgetColor: Colors.white,
    primaryTextTheme:
    const TextTheme(caption: TextStyle(color: Colors.white)));
