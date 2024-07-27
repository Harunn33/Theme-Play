import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/fonts.dart';

final class CustomTheme {
  CustomTheme._();

  static final CustomTheme instance = CustomTheme._();

  final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.instance.powderBlue,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.instance.black,
      ),
    ),
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
        fontFamily: AppFonts.nunitoBold.value,
      ),
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontFamily: AppFonts.nunitoBold.value,
        fontSize: 18.sp,
        color: AppColors.instance.black,
      ),
      titleSmall: TextStyle(
        fontFamily: AppFonts.nunitoSemiBold.value,
        fontSize: 16.sp,
        color: AppColors.instance.black,
      ),
      labelSmall: TextStyle(
        fontFamily: AppFonts.nunitoMedium.value,
        fontSize: 14.sp,
        color: AppColors.instance.black,
      ),
    ),
  );
}
