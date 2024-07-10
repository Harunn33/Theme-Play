import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final class DependencyInjection {
  DependencyInjection._();

  static final DependencyInjection instance = DependencyInjection._();

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}
