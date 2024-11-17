import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/notification_screen/notification_controller.dart';
import 'package:theme_play/shared/widgets/index.dart';

class NotificationScreen extends GetView<NotificationController> {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: GeneralAppBar(
        title: controller.constants.strings.notifications,
      ),
      body: Text(controller.constants.strings.notifications),
    );
  }
}
