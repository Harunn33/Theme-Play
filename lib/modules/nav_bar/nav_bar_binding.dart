import 'package:get/get.dart';
import 'package:theme_play/modules/account/account_controller.dart';
import 'package:theme_play/modules/home/home_controller.dart';
import 'package:theme_play/modules/nav_bar/nav_bar_controller.dart';

class NavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavBarController>(() => NavBarController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AccountController>(() => AccountController());
  }
}
