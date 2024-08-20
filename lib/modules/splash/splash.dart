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
      body: Obx(
        () => Stack(
          children: [
            Column(
              children: [
                AnimatedContainer(
                  duration: 1.seconds,
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: 1.sh / controller.height.value,
                ),
                AnimatedOpacity(
                  duration: 500.milliseconds,
                  opacity: controller.textOpacity.value,
                  child: Text(
                    controller.appStrings.appName,
                    style: textTheme.titleMedium?.copyWith(
                      fontSize: controller.animation.value,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: AnimatedOpacity(
                duration: 1.seconds,
                curve: Curves.fastLinearToSlowEaseIn,
                opacity: controller.containerOpacity.value,
                child: AnimatedContainer(
                  duration: 1.seconds,
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: 1.sw / controller.containerSize.value,
                  width: 1.sw / controller.containerSize.value,
                  child: AppImages.appLogo.png,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
