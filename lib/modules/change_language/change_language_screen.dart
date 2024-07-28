import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/controllers/localization_controller.dart';
import 'package:theme_play/modules/change_language/change_language_controller.dart';
import 'package:theme_play/modules/change_language/widgets/index.dart';
import 'package:theme_play/shared/widgets/index.dart';

class ChangeLanguageScreen extends GetView<ChangeLanguageController> {
  const ChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: GeneralAppBar(
        title: controller.constants.strings.changeLanguage.tr,
      ),
      body: GetBuilder<LocalizationController>(
        builder: (localizationController) {
          return Padding(
            padding: controller.constants.paddings.horizontal,
            child: Column(
              children: [
                12.verticalSpace,
                ...List.generate(
                  controller.languages.length,
                  (index) {
                    final language = controller.languages[index];
                    final bool isSelected = localizationController.lang.value ==
                        language.languageCode;
                    return Column(
                      children: [
                        CustomLanguageItem(
                          isSelected: isSelected,
                          onTap: () => controller.changeLanguage(
                            localizationController: localizationController,
                            index: index,
                          ),
                          title: language.languageName,
                        ),
                        12.verticalSpace,
                      ],
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
