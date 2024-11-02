import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/splash/splash_controller.dart';
import 'package:theme_play/shared/enums/index.dart';

class Splash extends GetView<SplashController> {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      backgroundColor: controller.appColors.powderBlue,
      body: Center(
        child: AppImages.appLogo.png,
      ),
    );
  }
}
