import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/data/network/repository/auth/index.dart';
import 'package:theme_play/data/network/repository/profile/profile_repository.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/index.dart';

class AccountController extends GetxController {
  final ConstantsInstances constants = ConstantsInstances.instance;
  // final AppColors appColors = AppColors.instance;
  // final AppPaddings appPaddings = AppPaddings.instance;
  // final AppStrings appStrings = AppStrings.instance;

  Future<User?> getProfileInfo() async {
    final ProfileRepository profileRepository = ProfileRepository.instance;
    return await profileRepository.getProfile();
  }

  Future<void> signOut() async {
    final AuthRepository authRepository = AuthRepository.instance;
    await authRepository.signOut();
  }

  void redirectionToChangeLanguage() {
    Get.toNamed(Routes.changeLanguage);
  }
}
