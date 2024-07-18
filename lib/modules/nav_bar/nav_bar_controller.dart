import 'package:get/get.dart';
import 'package:theme_play/modules/nav_bar/helpers/nav_bar_helpers.dart';
import 'package:theme_play/routes/app_pages.dart';

class NavBarController extends GetxController {
  final RxInt currentIndex = 0.obs;

  final NavBarHelpers navBarHelpers = NavBarHelpers.instance;

  void onTapNavBarItem(int value) {
    currentIndex.value = value;
    while (Get.currentRoute != Routes.navBar) {
      Get.back();
    }
  }
}
