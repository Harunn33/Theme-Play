import 'package:get/get.dart';
import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/constants_instances.dart';
import 'package:theme_play/shared/helpers/language_helpers.dart';

class ThemeController extends GetxController {
  final Map<String, dynamic> arguments = Get.arguments;

  late final Rx<UserThemeModel> userThemeModel = arguments['model'];

  final ConstantsInstances constants = ConstantsInstances.instance;

  final LanguageHelpers languageHelpers = LanguageHelpers.instance;

  Future<void> navigateToEditThemeScreen() async {
    Get.toNamed(
      Routes.editTheme,
      arguments: {
        "model": userThemeModel,
      },
    );
  }
}
