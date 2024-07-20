import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:theme_play/data/network/services/supabase_service.dart';

final class DependencyInjection {
  DependencyInjection._();

  static final DependencyInjection instance = DependencyInjection._();

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await dotenv.load(fileName: ".env");
    await SupabaseService.instance.initialize();
  }
}
