import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/edit_profile/edit_profile_controller.dart';
import 'package:theme_play/modules/edit_profile/widgets/custom_header_profile_photo.dart';
import 'package:theme_play/shared/extensions/index.dart';
import 'package:theme_play/shared/mixins/index.dart';
import 'package:theme_play/shared/widgets/index.dart';

class EditProfileScreen extends GetView<EditProfileController>
    with ValidatorsMixin {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: GeneralAppBar(title: controller.constants.strings.editProfile.tr),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: controller.constants.paddings.horizontal,
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              24.verticalSpace,
              CustomHeaderProfilePhoto(controller: controller),
              controller.accountController.profileInfoFuture.value.getData
                  .toBuild(
                onSuccess: (user) {
                  if (user == null) return const SizedBox.shrink();
                  controller.nameController.text =
                      user.userMetadata?["full_name"];
                  controller.emailController.text = user.email ?? "";
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      24.verticalSpace,
                      CustomTextFormField(
                        validator: validator,
                        textEditingController: controller.nameController,
                        labelText: controller.constants.strings.fullName,
                      ),
                      24.verticalSpace,
                      CustomTextFormField(
                        readOnly: true,
                        textEditingController: controller.emailController,
                        labelText: controller.constants.strings.email,
                      ),
                    ],
                  );
                },
              ),
              const Spacer(),
              CustomPrimaryButton(
                onTap: controller.handleSaveChanges,
                text: controller.constants.strings.save.tr,
              ),
              24.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
