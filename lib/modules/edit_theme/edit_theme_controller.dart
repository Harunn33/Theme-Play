import 'package:get/get.dart';
import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/data/network/repository/user_themes/user_themes_repository.dart';
import 'package:theme_play/modules/home/home_controller.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/extensions/loading_dialog_ext.dart';
import 'package:theme_play/shared/helpers/language_helpers.dart';

class EditThemeController extends GetxController {
  final ConstantsInstances constants = ConstantsInstances.instance;

  final LanguageHelpers languageHelpers = LanguageHelpers.instance;

  Rx<UserThemeModel> userThemeModel = Get.arguments["model"];

  Future<void> editUserTheme() async {
    final userThemesRepository = UserThemesRepository.instance;
    LoadingStatus.loading.showLoadingDialog();
    await userThemesRepository.editUserTheme(
      userThemeModel: userThemeModel.value,
    );
    final homeController = Get.find<HomeController>();
    homeController.refreshMyThemesTab();
    LoadingStatus.loaded.showLoadingDialog();
  }
}
