import 'dart:async';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

part 'sentry_service_impl.dart';

final class SentryService implements ISentryService {
  SentryService._();

  static SentryService instance = SentryService._();

  final sentryDsn = dotenv.env['SENTRY_DSN'].toString();

  @override
  Future<void> initializeSentry({
    FutureOr<void> Function()? appRunner,
  }) async {
    await SentryFlutter.init(
      (options) {
        options.dsn = sentryDsn;
        options.tracesSampleRate = 1.0;
        options.profilesSampleRate = 1.0;
      },
      appRunner: appRunner,
    );
  }
}
