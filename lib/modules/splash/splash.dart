import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/splash/splash_controller.dart';
import 'package:theme_play/shared/enums/index.dart';

class Splash extends GetView<SplashController> {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BaseScaffold(
      backgroundColor: controller.appColors.powderBlue,
      body: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.expand,
        children: [
          AppImages.appLogo.png,
          Positioned(
            bottom: 30.h,
            child: Text(
              "v.${controller.appStrings.appVersion}",
              style: textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }
}
