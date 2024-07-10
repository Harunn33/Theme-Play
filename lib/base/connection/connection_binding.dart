import 'package:get/get.dart';
import 'package:theme_play/base/connection/connection_controller.dart';

class ConnectionBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ConnectionController>(
      ConnectionController(),
      permanent: true,
      // fenix: true,
    );
  }
}
