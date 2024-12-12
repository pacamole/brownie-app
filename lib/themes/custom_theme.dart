import 'package:flutter/material.dart';

ThemeData customTheme = ThemeData(
    primaryColor: Colors.purple,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.purple,
      cardColor: Colors.indigo.shade50,
    ).copyWith(surface: Colors.purple));
