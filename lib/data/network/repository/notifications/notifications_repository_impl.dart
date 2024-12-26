part of 'notifications_repository.dart';

abstract class INotificationsRepository {
  Future<List<NotificationModel>> getNotifications();

  /// Send notification
  Future<void> sendNotificationByUserId({
    required String userId,
    required String themeName,
  });

  /// Send theme edit access request notification
  Future<void> sendThemeEditAccessRequestNotification({
    required String createdBy,
    required String themeName,
  });
}
