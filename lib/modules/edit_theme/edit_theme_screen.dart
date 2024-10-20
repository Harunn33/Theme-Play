import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/edit_theme/edit_theme_controller.dart';
import 'package:theme_play/modules/edit_theme/enums/index.dart';
import 'package:theme_play/modules/edit_theme/extensions/editable_widget_type_ext.dart';
import 'package:theme_play/shared/extensions/bottom_sheet_ext.dart';
import 'package:theme_play/shared/widgets/index.dart';

class EditThemeScreen extends GetView<EditThemeController> {
  const EditThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BaseScaffold(
        appBar: CustomThemeAppBar(
          isEditingMode: true,
          userThemeModel: controller.userThemeModel.value,
        ),
        backgroundColor: controller.constants.colors.hexToColor(
          controller.userThemeModel.value.style.bgColor,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            12.verticalSpace,
            Padding(
              padding: controller.constants.paddings.horizontal,
              child: CustomEditableWidget(
                editableWidgetType: EditableWidgetType.headerSlider,
                userThemeModel: controller.userThemeModel.value,
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
                  CustomEditableWidget(
                    editableWidgetType: EditableWidgetType.title,
                    userThemeModel: controller.userThemeModel.value,
                    child: CustomTypewriterAnimatedText(
                      onTap: () => context.showBottomSheet(
                        isDismissible: false,
                        child: EditableWidgetType.title
                            .getBottomSheetByEditableWidgetType(
                          userThemeModel: controller.userThemeModel.value,
                        ),
                      ),
                      speed: controller.userThemeModel.value.style.titleStyle
                          .typewriterAnimationDuration.milliseconds,
                      text: controller.userThemeModel.value.style.title,
                      textStyle:
                          Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: controller.constants.colors.hexToColor(
                                  controller.userThemeModel.value.style
                                      .titleStyle.color,
                                ),
                                fontSize: controller
                                    .userThemeModel.value.style.titleStyle.size,
                              ),
                    ),
                  ),
                  12.verticalSpace,
                  CustomEditableWidget(
                    editableWidgetType: EditableWidgetType.subtitle,
                    userThemeModel: controller.userThemeModel.value,
                    child: CustomTypewriterAnimatedText(
                      onTap: () => context.showBottomSheet(
                        isDismissible: false,
                        child: EditableWidgetType.subtitle
                            .getBottomSheetByEditableWidgetType(
                          userThemeModel: controller.userThemeModel.value,
                        ),
                      ),
                      speed: controller.userThemeModel.value.style.textStyle
                          .typewriterAnimationDuration.milliseconds,
                      text: controller.userThemeModel.value.style.subtitle,
                      textStyle:
                          Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: controller.constants.colors.hexToColor(
                                  controller.userThemeModel.value.style
                                      .textStyle.color,
                                ),
                                fontSize: controller
                                    .userThemeModel.value.style.textStyle.size,
                              ),
                    ),
                  ),
                  12.verticalSpace,
                  CustomEditableWidget(
                    editableWidgetType: EditableWidgetType.mainMessage,
                    userThemeModel: controller.userThemeModel.value,
                    child: CustomTypewriterAnimatedText(
                      speed: controller.userThemeModel.value.style.textStyle
                          .typewriterAnimationDuration.milliseconds,
                      text: controller.userThemeModel.value.style.mainMessage,
                      textStyle:
                          Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: controller.constants.colors.hexToColor(
                                  controller.userThemeModel.value.style
                                      .textStyle.color,
                                ),
                                fontSize: controller
                                    .userThemeModel.value.style.textStyle.size,
                              ),
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
