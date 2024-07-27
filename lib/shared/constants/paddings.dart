import 'package:flutter/widgets.dart';
import 'package:theme_play/shared/extensions/index.dart';

final class AppPaddings {
  const AppPaddings._();

  static const AppPaddings instance = AppPaddings._();

  EdgeInsets get horizontal => 12.padHorizontal;
  EdgeInsets get vertical => 8.padVertical;
}
