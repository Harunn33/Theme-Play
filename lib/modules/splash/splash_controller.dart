import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/data/network/services/supabase_service.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/constants/strings.dart';

class SplashController extends GetxController {
  final ConstantsInstances _appConstants = ConstantsInstances.instance;

  AppStrings get appStrings => _appConstants.strings;
  AppColors get appColors => _appConstants.colors;

  @override
  void onReady() {
    super.onReady();
    redirection();
  }

  Future<void> redirection() async {
    final SupabaseClient client = SupabaseService.client;
    if (client.auth.currentSession == null) {
      return Get.offAllNamed(Routes.signIn);
    }
    Get.offAllNamed(Routes.navBar);
  }
}
