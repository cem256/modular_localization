import 'package:flutter/material.dart';

final class AppTheme {
  AppTheme._();

  static final appTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(centerTitle: true),
  );
}
