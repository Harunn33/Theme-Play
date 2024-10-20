import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/data/models/theme/theme_model.dart';
import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/data/network/repository/profile/profile_repository.dart';
import 'package:theme_play/data/network/repository/themes/themes_repository.dart';
import 'package:theme_play/data/network/repository/user_themes/user_themes_repository.dart';
import 'package:theme_play/modules/home/home_controller.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/extensions/index.dart';
import 'package:theme_play/shared/helpers/language_helpers.dart';

class CreatorController extends GetxController {
  final LanguageHelpers languageHelpers = LanguageHelpers.instance;

  late final Future<List<ThemeModel>> futureThemes = getThemes();

  final ConstantsInstances constants = ConstantsInstances.instance;

  final List<String> themeListIcons = [];

  final RxInt selectedThemeIndex = (-1).obs;

  final TextEditingController nameController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void changeTheme(int index) {
    selectedThemeIndex.value = index;
  }

  Future<List<ThemeModel>> getThemes() async {
    final ThemesRepository themesRepository = ThemesRepository.instance;
    final themes = await themesRepository.getThemes();
    for (var theme in themes) {
      themeListIcons.add(
        await getThemeIcon(theme.id),
      );
    }
    return themes;
  }

  Future<String> getThemeIcon(String themeId) async {
    final ThemesRepository themesRepository = ThemesRepository.instance;
    return await themesRepository.getThemeIcon(
      themeId: themeId,
    );
  }

  void clearDataOnThePage() {
    selectedThemeIndex.value = -1;
    nameController.clear();
  }

  Future<void> createUserTheme({
    required final List<ThemeModel> themeList,
  }) async {
    if (selectedThemeIndex.value == -1) {
      return SnackbarType.error.show(
        message: constants.strings.selectCategory.tr,
      );
    }
    if (!formKey.currentState!.validate()) return;
    LoadingStatus.loading.showLoadingDialog();
    final UserThemesRepository userThemesRepository =
        UserThemesRepository.instance;
    final ProfileRepository profileRepository = ProfileRepository.instance;
    final user = await profileRepository.getProfile();
    if (user == null) return LoadingStatus.loaded.showLoadingDialog();
    UserThemeModel model = UserThemeModel(
      shareableCode: _generateRandomCode(11),
      themeId: themeList[selectedThemeIndex.value].id,
      style: themeList[selectedThemeIndex.value].style,
      name: nameController.text,
      createdBy: user.id,
    );
    await userThemesRepository.createUserTheme(
      userThemeModel: model,
    );
    final userThemes = await userThemesRepository.getUserThemes();
    model = userThemes.last;
    final HomeController homeController = Get.find<HomeController>();
    homeController.refreshMyThemesTab();
    LoadingStatus.loaded.showLoadingDialog();
    SnackbarType.success.show(
      message: constants.strings.themeCreated.tr,
    );
    Get.toNamed(
      Routes.theme,
      arguments: {
        "model": model.obs,
      },
    );
    clearDataOnThePage();
  }

  /// Random id generator from created theme
  String _generateRandomCode(int length) {
    const String chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final Random random = Random();
    String code = '';

    for (int i = 0; i < length; i++) {
      code += chars[random.nextInt(chars.length)];
    }

    return code;
  }
}
