import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/paddings.dart';
import 'package:theme_play/shared/constants/strings.dart';

final class ConstantsInstances {
  ConstantsInstances._();

  static ConstantsInstances instance = ConstantsInstances._();

  // General Instances
  final AppColors colors = AppColors.instance;
  final AppStrings strings = AppStrings.instance;
  final AppPaddings paddings = AppPaddings.instance;
}
