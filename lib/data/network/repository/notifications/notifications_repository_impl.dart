part of 'notifications_repository.dart';

abstract class INotificationsRepository {
  Future<List<NotificationModel>> getNotifications();

  /// Send notification
  Future<void> sendNotificationByUserId({
    required String userId,
  });
}
