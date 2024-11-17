import 'package:get/get.dart';
import 'package:theme_play/modules/change_language/change_language_controller.dart';

class ChangeLanguageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangeLanguageController>(ChangeLanguageController.new);
  }
}
