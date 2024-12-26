import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/modules/theme/helpers/theme_screen_helpers.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/constants_instances.dart';
import 'package:theme_play/shared/helpers/language_helpers.dart';

class ThemeController extends GetxController {
  final Map<String, dynamic> arguments = Get.arguments;

  late final Rx<UserThemeModel> userThemeModel = arguments['model'];

  late final bool hasEditAccess = arguments['has_edit_access'];

  final constants = ConstantsInstances.instance;

  final languageHelpers = LanguageHelpers.instance;

  Future<void> navigateToEditThemeScreen(BuildContext context) async {
    if (!hasEditAccess) {
      return ThemeScreenHelpers.instance.editThemeAccessControlDialog(context);
    }
    unawaited(
      Get.toNamed(
        Routes.editTheme,
        arguments: {
          'model': userThemeModel,
        },
      ),
    );
  }
}
