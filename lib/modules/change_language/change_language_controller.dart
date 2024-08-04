import 'dart:ui';
import 'package:get/get.dart';
import 'package:theme_play/controllers/localization_controller.dart';
import 'package:theme_play/data/models/language/language_model.dart';
import 'package:theme_play/modules/nav_bar/nav_bar_controller.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/constants/langs.dart';

class ChangeLanguageController extends GetxController {
  final ConstantsInstances constants = ConstantsInstances.instance;

  final RxBool isSelected = true.obs;

  final List<LanguageModel> languages = AppLangs.languages;

  final NavBarController navBarController = Get.find<NavBarController>();

  void changeLanguage({
    required LocalizationController localizationController,
    required int index,
  }) {
    localizationController.setLanguage(
      Locale(
        AppLangs.languages[index].languageCode,
        AppLangs.languages[index].countryCode,
      ),
    );
    localizationController.setSelectedIndex(index);
    localizationController.lang.value = AppLangs.languages[index].languageCode;
  }
}
