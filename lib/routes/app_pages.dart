import 'package:get/get.dart';
import 'package:theme_play/modules/splash/index.dart';
part 'app_routes.dart';

final class AppPages {
  AppPages._();

  static final AppPages instance = AppPages._();

  final String initial = Routes.splash;

  final List<GetPage<dynamic>> routes = <GetPage>[
    GetPage(
      name: Routes.splash,
      page: () => const Splash(),
      binding: SplashBinding(),
    ),
  ];
}
