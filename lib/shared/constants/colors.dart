import 'dart:ui';

final class AppColors {
  const AppColors._();

  static const AppColors instance = AppColors._();

  // Primary Colors
  Color get black => const Color(0xFF000000);
  // Background Colors
  Color get white => const Color(0xFFFFFFFF);
  // Accent Colors
  Color get mattPink => const Color(0xFFFFB6C1);
  Color get powderBlue => const Color(0xFFB0E0E6);
  // Secondary Colors
  Color get lemonChiffon => const Color(0xFFFFFACD);
  Color get toxicFrog => const Color(0xFF98FB98);
  // Action Colors
  Color get thistle => const Color(0xFFD8BFD8);
  // General Colors
  Color get orochimaru => const Color(0xFFD9D9D9);
  // Snackbar Colors
  Color get error => const Color(0xFFFF6F61);
  Color get success => const Color(0xFF4CAF50);
  Color get info => const Color(0xFFB0E0E6);

  Color hexToColor(String hexCode) {
    final hexColor = hexCode.replaceAll('#', '');
    return Color(int.parse('FF$hexColor', radix: 16));
  }
}
