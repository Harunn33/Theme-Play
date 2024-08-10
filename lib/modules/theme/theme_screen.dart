import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/theme/theme_controller.dart';
import 'package:theme_play/modules/theme/widgets/index.dart';
import 'package:theme_play/shared/widgets/index.dart';

class ThemeScreen extends GetView<ThemeController> {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: CustomThemeAppBar(
        controller: controller,
      ),
      backgroundColor: controller.constants.colors.hexToColor(
        controller.userThemeModel.style.bgColor,
      ),
      body: Padding(
        padding:
            controller.userThemeModel.style.sliderStyle.scrollDirection == "h"
                ? EdgeInsets.zero
                : controller.constants.paddings.horizontal,
        child: Column(
          children: [
            CustomSlider(
              sliderStyle: controller.userThemeModel.style.sliderStyle,
            ),
            CustomSecondaryButton(
              onTap: () {},
              borderRadius: controller.userThemeModel.style.buttonStyle.radius,
              bgColor: controller.constants.colors.hexToColor(
                controller.userThemeModel.style.buttonStyle.color,
              ),
              text: "Primary Button",
            ),
          ],
        ),
      ),
    );
  }
}
