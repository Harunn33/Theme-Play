import 'dart:async';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:theme_play/data/network/repository/profile/index.dart';
import 'package:theme_play/data/network/services/dio/dio_service.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/extensions/index.dart';

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

  @override
  Future<void> sendNotificationByUserId({
    required String title,
    required String content,
    required String userId,
  }) async {
    try {
      final dioService = DioService.instance;
      await dioService.post(
        dotenv.env['SEND_NOTIFICATIONS_PATH'].toString(),
        data: {
          'app_id': oneSignalAppId,
          'target_channel': 'push',
          'headings': {'en': title},
          'contents': {'en': content},
          'data': {
            'theme_shared': true,
          },
          'filters': [
            {
              'field': 'tag',
              'key': 'user_id',
              'relation': '=',
              'value': userId,
            },
          ],
        },
      );
    } catch (e) {
      rethrow;
    } finally {
      LoadingStatus.loaded.showLoadingDialog();
    }
  }
}
