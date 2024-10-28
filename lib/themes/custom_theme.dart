import 'package:flutter/material.dart';

ThemeData customTheme = ThemeData(
    primaryColor: Colors.purple,
    scaffoldBackgroundColor: Colors.purpleAccent.shade100,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.purple,
    ).copyWith(surface: Colors.purple));
