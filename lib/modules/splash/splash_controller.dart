import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/data/network/services/supabase/index.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/colors.dart';

class SplashController extends GetxController {
  AppColors get appColors => AppColors.instance;

  @override
  void onReady() {
    redirection();
    super.onReady();
  }

  Future<void> redirection() async {
    final SupabaseClient client = SupabaseService.client;
    if (client.auth.currentSession == null) {
      return Get.offAllNamed(Routes.signIn);
    }
    Get.offAllNamed(Routes.navBar);
  }
}
