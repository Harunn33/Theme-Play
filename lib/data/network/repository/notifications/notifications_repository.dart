import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:theme_play/data/models/notification/index.dart';
import 'package:theme_play/data/models/notification/notification_model.dart';
import 'package:theme_play/data/network/repository/profile/profile_repository.dart';
import 'package:theme_play/data/network/services/dio/dio_service.dart';
import 'package:theme_play/data/network/services/supabase/index.dart';
import 'package:theme_play/modules/notification_screen/enum/notification_type.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/extensions/loading_dialog_ext.dart';

part 'notifications_repository_impl.dart';

final class NotificationsRepository implements INotificationsRepository {
  NotificationsRepository._();

  static NotificationsRepository instance = NotificationsRepository._();

  final SupabaseService _supabaseService = SupabaseService.instance;

  @override
  Future<List<NotificationModel>> getNotifications() async {
    final response = await _supabaseService.fetchData(
      tableName: TableName.notifications,
    );
    return response.map(NotificationModel.fromJson).toList();
  }

  Future<void> _createNotification({
    required NotificationModel notification,
  }) async {
    await _supabaseService.insertData(
      tableName: TableName.notifications,
      data: notification.toJson(),
    );
  }

  @override
  Future<void> sendNotificationByUserId({
    required String userId,
  }) async {
    try {
      final dioService = DioService.instance;
      final profileRepository = ProfileRepository.instance;
      final user = await profileRepository.getProfile();
      if (user == null) return;
      final fullName = user.userMetadata?['full_name'];
      final notification = NotificationModel(
        title: {
          'en': 'Theme Shared',
          'tr': 'Tema Paylaşıldı',
        },
        content: {
          'en': '$fullName shared a theme with you. Check it out!',
          'tr': '$fullName sizinle bir tema paylaştı. İnceleyin!',
        },
        createdBy: userId,
        type: NotificationType.themeShared.value,
      );
      await _createNotification(notification: notification);
      await dioService.post(
        dotenv.env['SEND_NOTIFICATIONS_PATH'].toString(),
        data: {
          'app_id': dotenv.env['ONESIGNAL_APP_ID'].toString(),
          'target_channel': 'push',
          'headings': notification.title,
          'contents': notification.content,
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
