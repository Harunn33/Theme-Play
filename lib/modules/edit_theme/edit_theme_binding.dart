import 'package:get/get.dart';
import 'package:theme_play/modules/edit_theme/edit_theme_controller.dart';

class EditThemeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditThemeController>(EditThemeController.new);
  }
}
