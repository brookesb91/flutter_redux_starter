import 'package:flutter/material.dart';

class ThemeFonts {
  static const String TITLE = 'Roboto';
  static const String BODY = 'Open Sans';
  static const String MONOSPACE = 'Space Mono';
}

final TextTheme textTheme = TextTheme(
    headline1: TextStyle(fontFamily: ThemeFonts.TITLE),
    headline2: TextStyle(fontFamily: ThemeFonts.TITLE),
    headline3: TextStyle(fontFamily: ThemeFonts.TITLE),
    bodyText1: TextStyle(fontFamily: ThemeFonts.BODY),
    subtitle1: TextStyle(fontFamily: ThemeFonts.MONOSPACE));
