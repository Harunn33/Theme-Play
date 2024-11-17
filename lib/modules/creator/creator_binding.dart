import 'package:get/get.dart';
import 'package:theme_play/modules/creator/creator_controller.dart';

class CreatorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreatorController>(CreatorController.new);
  }
}
