import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/connection/connection_binding.dart';
import 'package:theme_play/controllers/localization_controller.dart';
import 'package:theme_play/data/network/services/sentry/sentry_service.dart';
import 'package:theme_play/init/di.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/app_translations.dart';
import 'package:theme_play/shared/constants/strings.dart';
import 'package:theme_play/shared/helpers/language_helpers.dart';
import 'package:theme_play/shared/themes/themes.dart';

void main() async {
  await DependencyInjection.instance.init();
  await SentryService.instance.initializeSentry(
    appRunner: () => runApp(
      const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final designSize = Size(
          constraints.maxWidth,
          constraints.maxHeight,
        );
        return ScreenUtilInit(
          designSize: designSize,
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, __) {
            return GetBuilder<LocalizationController>(
              builder: (localizationController) {
                return GetMaterialApp(
                  title: AppStrings.instance.appName,
                  translations: AppTranslations(
                    languages: DependencyInjection.languages,
                  ),
                  fallbackLocale: Locale(
                    LanguageHelpers.instance.currentLanguageCode,
                    LanguageHelpers.instance.currentCountryCode,
                  ),
                  locale: localizationController.locale,
                  debugShowCheckedModeBanner: false,
                  theme: CustomTheme.instance.lightTheme,
                  initialRoute: AppPages.instance.initial,
                  getPages: AppPages.instance.routes,
                  initialBinding: ConnectionBinding(),
                );
              },
            );
          },
        );
      },
    );
  }
}
