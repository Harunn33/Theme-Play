import 'dart:async';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:theme_play/data/network/repository/profile/index.dart';
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
    unawaited(OneSignal.User.addTags({'user_id': user.id}));
    OneSignal.Notifications.addClickListener((OSNotificationClickEvent event) {
      if (user.id.isEmpty) return;
      event.notification.additionalData?.forEach((key, value) {
        if (key == 'theme_shared' && value == true) {
          Timer.periodic(
            1.seconds,
            (timer) {
              if (Get.currentRoute == Routes.notifications) {
                timer.cancel();
                return;
              }
              Get.toNamed(
                Routes.notifications,
              );
            },
          );
          return;
        }
      });
    });
  }
}
