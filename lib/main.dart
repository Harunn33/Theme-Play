import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/connection/connection_binding.dart';
import 'package:theme_play/init/di.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/themes/themes.dart';

Future<void> main() async {
  await DependencyInjection.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return GetMaterialApp(
          title: 'Theme Play',
          debugShowCheckedModeBanner: false,
          theme: CustomTheme.instance.lightTheme,
          initialRoute: AppPages.instance.initial,
          getPages: AppPages.instance.routes,
          initialBinding: ConnectionBinding(),
        );
      },
    );
  }
}
