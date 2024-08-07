import 'package:get/get.dart';
import 'package:theme_play/modules/account/index.dart';
import 'package:theme_play/modules/change_language/index.dart';
import 'package:theme_play/modules/creator/index.dart';
import 'package:theme_play/modules/edit_profile/index.dart';
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
    // Navbar Routes
    GetPage(
      name: Routes.navBar,
      page: () => const NavbarScreen(),
      binding: NavBarBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.account,
      page: () => const AccountScreen(),
    ),
    // Account Routes
    GetPage(
      name: Routes.editProfile,
      page: () => const EditProfileScreen(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: Routes.changeLanguage,
      page: () => const ChangeLanguageScreen(),
      binding: ChangeLanguageBinding(),
    ),
    // Other Routes
    GetPage(
      name: Routes.creator,
      page: () => const CreatorScreen(),
      binding: CreatorBinding(),
    ),
  ];
}
