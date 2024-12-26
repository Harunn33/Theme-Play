part of 'one_signal_service.dart';

/// An interface for Onesignal
abstract class IOneSignalService {
  /// Initialize OneSignal
  Future<void> initializeOneSignal();

  /// Add click notification
  Future<void> addClickNotification();
}
