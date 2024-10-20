import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/theme/theme_controller.dart';
import 'package:theme_play/shared/widgets/index.dart';

class ThemeScreen extends GetView<ThemeController> {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: CustomThemeAppBar(
        userThemeModel: controller.userThemeModel,
      ),
      backgroundColor: controller.constants.colors.hexToColor(
        controller.userThemeModel.style.bgColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          12.verticalSpace,
          Padding(
            padding:
                controller.userThemeModel.style.sliderStyle.scrollDirection ==
                        "h"
                    ? EdgeInsets.zero
                    : controller.constants.paddings.horizontal,
            child: CustomSlider(
              sliderStyle: controller.userThemeModel.style.sliderStyle,
            ),
          ),
          12.verticalSpace,
          Padding(
            padding: controller.constants.paddings.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTypewriterAnimatedText(
                  speed: controller.userThemeModel.style.titleStyle
                      .typewriterAnimationDuration.milliseconds,
                  text: controller.userThemeModel.style.title,
                  textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: controller.constants.colors.hexToColor(
                          controller.userThemeModel.style.titleStyle.color,
                        ),
                        fontSize:
                            controller.userThemeModel.style.titleStyle.size,
                      ),
                ),
                12.verticalSpace,
                CustomTypewriterAnimatedText(
                  speed: controller.userThemeModel.style.textStyle
                      .typewriterAnimationDuration.milliseconds,
                  text: controller.userThemeModel.style.subtitle,
                  textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: controller.constants.colors.hexToColor(
                          controller.userThemeModel.style.textStyle.color,
                        ),
                        fontSize:
                            controller.userThemeModel.style.textStyle.size,
                      ),
                ),
                12.verticalSpace,
                CustomTypewriterAnimatedText(
                  speed: controller.userThemeModel.style.textStyle
                      .typewriterAnimationDuration.milliseconds,
                  text: controller.userThemeModel.style.mainMessage,
                  textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: controller.constants.colors.hexToColor(
                          controller.userThemeModel.style.textStyle.color,
                        ),
                        fontSize:
                            controller.userThemeModel.style.textStyle.size,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
