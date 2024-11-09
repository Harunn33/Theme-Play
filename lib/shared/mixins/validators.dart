import 'package:get/get.dart';
import 'package:theme_play/shared/constants/strings.dart';

mixin ValidatorsMixin {
  String? validator(String? value) {
    const AppStrings strings = AppStrings.instance;
    if (value == null) return null;
    if (value.isEmpty) return strings.fieldIsRequired.tr;
    return null;
  }
}
