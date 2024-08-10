import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/creator/creator_controller.dart';
import 'package:theme_play/modules/creator/widgets/custom_category_list.dart';
import 'package:theme_play/shared/extensions/index.dart';
import 'package:theme_play/shared/widgets/index.dart';

class CreatorScreen extends GetView<CreatorController> {
  const CreatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: const GeneralAppBar(
        title: "",
      ),
      backgroundColor: controller.constants.colors.powderBlue,
      body: Container(
        decoration: BoxDecoration(
          color: controller.constants.colors.white,
          borderRadius: 24.radiusVerticalTop,
        ),
        child: controller.futureThemes.getData.toBuild(
          onSuccess: (themeList) {
            if (themeList == null) return const SizedBox.shrink();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                16.verticalSpace,
                Padding(
                  padding: controller.constants.paddings.horizontal,
                  child: Text(
                    controller.constants.strings.selectCategory.tr,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                8.verticalSpace,
                CustomCategoryList(
                  controller: controller,
                  themeList: themeList,
                ),
                8.verticalSpace,
                Expanded(
                  child: Padding(
                    padding: controller.constants.paddings.horizontal,
                    child: Form(
                      key: controller.formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTextFormField(
                            textEditingController: controller.nameController,
                            labelText: controller
                                .constants.strings.enterYourPageName.tr,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return controller
                                    .constants.strings.enterYourPageName.tr;
                              }
                              return null;
                            },
                          ),
                          CustomPrimaryButton(
                            onTap: () => controller.createUserTheme(
                              themeList: themeList,
                            ),
                            text: controller.constants.strings.create.tr,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                24.verticalSpace,
              ],
            );
          },
        ),
      ),
    );
  }
}
