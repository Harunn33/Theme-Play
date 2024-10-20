import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/data/network/repository/auth/index.dart';
import 'package:theme_play/data/network/repository/profile/profile_repository.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/index.dart';

class AccountController extends GetxController {
  final ConstantsInstances constants = ConstantsInstances.instance;

  final RxString profilePhotoUrl = "".obs;

  late final Rx<Future<User?>> profileInfoFuture = getProfileInfo().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    profilePhotoUrl.value = await getProfilePhoto();
  }

  Future<String> getProfilePhoto() async {
    final ProfileRepository profileRepository = ProfileRepository.instance;
    return await profileRepository.getProfilePhoto();
  }

  Future<User?> getProfileInfo() async {
    final ProfileRepository profileRepository = ProfileRepository.instance;
    return await profileRepository.getProfile();
  }

  Future<void> signOut() async {
    final AuthRepository authRepository = AuthRepository.instance;
    await authRepository.signOut();
  }

  void redirectionToEditProfile() {
    Get.toNamed(Routes.editProfile);
  }

  void redirectionToChangeLanguage() {
    Get.toNamed(Routes.changeLanguage);
  }
}
