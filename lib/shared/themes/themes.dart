import 'package:flutter/material.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/fonts.dart';

final class CustomTheme {
  CustomTheme._();

  static final CustomTheme instance = CustomTheme._();

  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: AppColors.instance.powderBlue,
    ),
    splashFactory: NoSplash.splashFactory,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.instance.mattPink,
      backgroundColor: AppColors.instance.white,
      showUnselectedLabels: false,
      selectedLabelStyle: TextStyle(
        fontFamily: AppFonts.vagaRoundBold.value,
      ),
    ),
  );
}
