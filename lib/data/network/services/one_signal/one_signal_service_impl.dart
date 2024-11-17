part of 'one_signal_service.dart';

/// An interface for Onesignal
abstract class IOneSignalService {
  /// Initialize OneSignal
  Future<void> initializeOneSignal();

  /// Send notification
  Future<void> sendNotificationByUserId({
    required String title,
    required String content,
    required String userId,
  });
}
