import 'package:flutter/material.dart';

const fontFamily = 'Poppins';

final themeLight = ThemeData(
  primaryColorLight: const Color(0xff423190),
  brightness: Brightness.light,
  primaryColor: const Color(0xff583989),
  highlightColor: Colors.black,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  backgroundColor: Colors.white,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
    secondary: Colors.black,
    brightness: Brightness.light,
  ),
);

final themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: const Color(0xff1e2293),
  primaryColor: const Color(0xff290550),
  highlightColor: const Color(0xff42148b),
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  backgroundColor: Colors.grey[800],
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
    secondary: const Color(0xff31125c),
    brightness: Brightness.dark,
  ),
);
