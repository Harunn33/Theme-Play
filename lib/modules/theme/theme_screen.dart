import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/theme/theme_controller.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/extensions/index.dart';
import 'package:theme_play/shared/widgets/index.dart';

class ThemeScreen extends GetView<ThemeController> {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BaseScaffold(
        appBar: CustomThemeAppBar(
          userThemeModel: controller.userThemeModel.value,
        ),
        backgroundColor: controller.constants.colors.hexToColor(
          controller.userThemeModel.value.style.bgColor,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: controller.constants.colors.hexToColor(
            controller.userThemeModel.value.style.titleStyle.color,
          ),
          onPressed: () => controller.navigateToEditThemeScreen(context),
          child: AppIcons.icEdit.svgWithAttiributes(
            color: controller.constants.colors.white,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: controller
                  .userThemeModel.value.style.sliderStyle.images.isNotEmpty,
              child: Padding(
                padding: 12.padTop +
                    (controller.userThemeModel.value.style.sliderStyle
                                .scrollDirection ==
                            "h"
                        ? EdgeInsets.zero
                        : controller.constants.paddings.horizontal),
                child: CustomSlider(
                  sliderStyle:
                      controller.userThemeModel.value.style.sliderStyle,
                ),
              ),
            ),
            12.verticalSpace,
            Padding(
              padding: controller.constants.paddings.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTypewriterAnimatedText(
                    speed: controller.userThemeModel.value.style.titleStyle
                        .typewriterAnimationDuration.milliseconds,
                    text: controller.userThemeModel.value.style.title,
                    textStyle:
                        Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: controller.constants.colors.hexToColor(
                                controller.userThemeModel.value.style.titleStyle
                                    .color,
                              ),
                              fontSize: controller
                                  .userThemeModel.value.style.titleStyle.size,
                            ),
                  ),
                  12.verticalSpace,
                  CustomTypewriterAnimatedText(
                    speed: controller.userThemeModel.value.style.textStyle
                        .typewriterAnimationDuration.milliseconds,
                    text: controller.userThemeModel.value.style.subtitle,
                    textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: controller.constants.colors.hexToColor(
                            controller
                                .userThemeModel.value.style.textStyle.color,
                          ),
                          fontSize: controller
                              .userThemeModel.value.style.textStyle.size,
                        ),
                  ),
                  12.verticalSpace,
                  CustomTypewriterAnimatedText(
                    speed: controller.userThemeModel.value.style.textStyle
                        .typewriterAnimationDuration.milliseconds,
                    text: controller.userThemeModel.value.style.mainMessage,
                    textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: controller.constants.colors.hexToColor(
                            controller
                                .userThemeModel.value.style.textStyle.color,
                          ),
                          fontSize: controller
                              .userThemeModel.value.style.textStyle.size,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
