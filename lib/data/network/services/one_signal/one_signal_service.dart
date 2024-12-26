import 'dart:async';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:theme_play/data/network/repository/profile/index.dart';
import 'package:theme_play/modules/notification_screen/enum/notification_type.dart';
import 'package:theme_play/routes/app_pages.dart';

part 'one_signal_service_impl.dart';

final class OneSignalService implements IOneSignalService {
  OneSignalService._();

  static OneSignalService instance = OneSignalService._();

  final String oneSignalAppId = dotenv.env['ONESIGNAL_APP_ID'].toString();

  @override
  Future<void> initializeOneSignal() async {
    unawaited(OneSignal.Debug.setLogLevel(OSLogLevel.verbose));

    OneSignal.initialize(oneSignalAppId);
    unawaited(OneSignal.Notifications.requestPermission(true));
    final profileRepository = ProfileRepository.instance;
    final user = await profileRepository.getProfile();
    if (user == null) return;
    unawaited(
      OneSignal.User.addTags({
        'user_id': user.id,
      }),
    );
  }

  @override
  Future<void> addClickNotification() async {
    final profileRepository = ProfileRepository.instance;
    final user = await profileRepository.getProfile();
    if (user == null) return;
    OneSignal.Notifications.addClickListener((OSNotificationClickEvent event) {
      final additionalData = event.notification.additionalData;
      if (additionalData == null) return;
      if (user.id.isEmpty) return;
      for (final entry in additionalData.entries) {
        final key = entry.key;
        final value = entry.value;

        if ((key == NotificationType.themeShared.value && value == true) ||
            (key == NotificationType.themeEditAccess.value && value == true)) {
          Get.toNamed(
            Routes.notifications,
          );
          break;
        }
      }
    });
  }
}
