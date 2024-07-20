import 'package:get/get.dart';
import 'package:theme_play/modules/account/index.dart';
import 'package:theme_play/modules/home/index.dart';
import 'package:theme_play/modules/nav_bar/index.dart';
import 'package:theme_play/modules/sign_in/index.dart';
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
    GetPage(
      name: Routes.signIn,
      page: () => const SignInScreen(),
      binding: SignInBinding(),
    ),
    // Navbar
    GetPage(
      name: Routes.navBar,
      page: () => const NavbarScreen(),
      binding: NavBarBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.account,
      page: () => const AccountScreen(),
      binding: AccountBinding(),
    ),
  ];
}
