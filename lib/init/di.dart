import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:theme_play/data/local/index.dart';
import 'package:theme_play/data/network/services/supabase/index.dart';
import 'package:theme_play/shared/constants/dep.dart' as dep;

final class DependencyInjection {
  DependencyInjection._();

  static final DependencyInjection instance = DependencyInjection._();
  static late final Map<String, Map<String, String>> languages;

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    unawaited(
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]),
    );
    await dotenv.load();
    await LocalStorageService.instance.init();
    await SupabaseService.instance.initialize();
    languages = await dep.init();
    await 300.milliseconds.delay();
  }
}
