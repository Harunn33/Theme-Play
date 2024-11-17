import 'package:get/get.dart';
import 'package:theme_play/modules/notification_screen/notification_controller.dart';

final class NotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(NotificationController.new);
  }
}
