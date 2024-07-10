import 'package:flutter/material.dart';

final class CustomTheme {
  CustomTheme._();

  static final CustomTheme instance = CustomTheme._();

  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
  );
}
