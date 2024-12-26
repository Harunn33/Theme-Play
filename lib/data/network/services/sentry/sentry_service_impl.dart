part of 'sentry_service.dart';

/// An interface for Onesignal
abstract class ISentryService {
  /// Initialize Sentry
  Future<void> initializeSentry({
    FutureOr<void> Function()? appRunner,
  });
}
