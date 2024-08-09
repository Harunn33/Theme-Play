import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/data/local/index.dart';
import 'package:theme_play/data/network/repository/profile/profile_repository.dart';
import 'package:theme_play/modules/account/account_controller.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/extensions/index.dart';

class EditProfileController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final LocalStorageService localStorageService = LocalStorageService.instance;

  final AccountController accountController = Get.find<AccountController>();

  final ConstantsInstances constants = ConstantsInstances.instance;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final RxString profilePhotoUrl = "".obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    profilePhotoUrl.value = getProfilePhoto();
  }

  String getProfilePhoto() {
    return accountController.profilePhotoUrl.value;
  }

  Future<User?> updateProfile() async {
    final ProfileRepository profileRepository = ProfileRepository.instance;

    final UserAttributes userAttributes = UserAttributes(
      email: emailController.text,
      data: {
        "full_name": nameController.value.text.trim(),
      },
    );
    final User? user = await profileRepository.updateProfile(userAttributes);
    if (user != null) {
      accountController.profileInfoFuture.value = Future.value(user);
    }
    Get.back();
    SnackbarType.success.show(
      message: constants.strings.profileUpdated.tr,
    );
    return user;
  }

  Future<void> uploadProfilePhoto() async {
    final ProfileRepository profileRepository = ProfileRepository.instance;
    final imageUrl = await profileRepository.uploadProfilePhoto();
    if (imageUrl.isNotEmpty) {
      profilePhotoUrl.value = imageUrl;
      accountController.profilePhotoUrl.value = imageUrl;
    }
  }

  void handleSaveChanges() async {
    if (formKey.currentState?.validate() ?? false) {
      await updateProfile();
    }
  }
}
