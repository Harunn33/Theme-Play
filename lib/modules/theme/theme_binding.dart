import 'package:get/get.dart';
import 'package:theme_play/modules/theme/theme_controller.dart';

class ThemeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeController>(ThemeController.new);
  }
}
