import 'dart:async';

import 'package:get/get.dart';
import 'package:theme_play/data/network/repository/profile/index.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/colors.dart';

class SplashController extends GetxController {
  AppColors get appColors => AppColors.instance;

  @override
  void onReady() {
    super.onReady();
    redirection();
  }

  Future<void> redirection() async {
    final profileRepository = ProfileRepository.instance;
    final user = await profileRepository.getProfile();
    if (user == null) {
      return Get.offAllNamed(Routes.signIn);
    }
    unawaited(
      Get.offAllNamed(Routes.navBar),
    );
  }
}
