import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/data/network/repository/auth/index.dart';
import 'package:theme_play/data/network/repository/profile/profile_repository.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/extensions/snackbar_ext.dart';

class AccountController extends GetxController {
  final ConstantsInstances constants = ConstantsInstances.instance;

  final RxString profilePhotoUrl = ''.obs;

  late final Rx<Future<User?>> profileInfoFuture = getProfileInfo().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    profilePhotoUrl.value = await getProfilePhoto();
  }

  Future<String> getProfilePhoto() async {
    final profileRepository = ProfileRepository.instance;
    return profileRepository.getProfilePhoto();
  }

  Future<User?> getProfileInfo() async {
    final profileRepository = ProfileRepository.instance;
    return profileRepository.getProfile();
  }

  Future<void> signOut() async {
    final authRepository = AuthRepository.instance;
    await authRepository.signOut();
  }

  void redirectionToEditProfile() {
    Get.toNamed(Routes.editProfile);
  }

  void redirectionToChangeLanguage() {
    Get.toNamed(Routes.changeLanguage);
  }

  void onTapCopyUid({
    required String uid,
  }) {
    Clipboard.setData(
      ClipboardData(text: _encodeUuid(uid)),
    );
    SnackbarType.success.show(
      message: constants.strings.copiedUid.tr,
    );
  }

  String _encodeUuid(String uuid) {
    final bytes = utf8.encode(uuid);
    return base64Encode(bytes);
  }

  String truncateUID(String text) {
    if (text.length <= 8) return text;
    return '${_encodeUuid(text).substring(0, 8)}∗∗∗∗';
  }
}
