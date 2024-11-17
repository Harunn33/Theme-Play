import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/notification_screen/notification_controller.dart';
import 'package:theme_play/modules/notification_screen/widgets/index.dart';
import 'package:theme_play/shared/extensions/future_builder_ext.dart';
import 'package:theme_play/shared/widgets/index.dart';

class NotificationScreen extends GetView<NotificationController> {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: GeneralAppBar(
        title: controller.constants.strings.notifications.tr,
      ),
      body: Obx(
        () => controller.notificationsFuture.value.getData.toBuild(
          onSuccess: (notificationList) {
            if (notificationList == null) return const SizedBox.shrink();
            return RefreshIndicator(
              onRefresh: () async => controller.refreshNotifications(),
              child: ListView.separated(
                itemCount: notificationList.length,
                separatorBuilder: (context, index) => Divider(
                  height: 0,
                  color: controller.constants.colors.millionGrey,
                ),
                itemBuilder: (context, index) {
                  final notification = notificationList[index];
                  return NotificationCard(
                    notificationModel: notification,
                    onTap: () => controller.onTapNotification(),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
