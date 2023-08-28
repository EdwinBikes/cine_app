import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: const Color.fromARGB(255, 152, 19, 219),
      brightness: Brightness.dark);
}
