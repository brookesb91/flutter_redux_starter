import 'package:flutter/material.dart';

import 'text.dart';
import 'colors.dart';

final appThemeData = ThemeData(
    primaryColor: ThemeColors.PRIMARY,
    accentColor: ThemeColors.ACCENT,
    scaffoldBackgroundColor: ThemeColors.BACKGROUND,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: textTheme,
    brightness: Brightness.dark);
