import 'package:get/get.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/index.dart';

class SplashController extends GetxController {
  final ConstantsInstances appConstants = ConstantsInstances.instance;

  @override
  void onReady() {
    super.onReady();
    redirection();
  }

  void redirection() {
    Get.offNamed(Routes.signIn);
  }
}
