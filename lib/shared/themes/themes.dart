import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    textTheme: TextTheme(
      labelSmall: TextStyle(
        fontFamily: AppFonts.vagaRoundMedium.value,
        fontSize: 14.sp,
        color: AppColors.instance.black,
      ),
    ),
  );
}
