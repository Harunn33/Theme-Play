import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/splash/splash_controller.dart';

class Splash extends GetView<SplashController> {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: 1.sw,
              child: ColoredBox(
                color: controller.appConstants.colors.mattPink,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 1.sw,
              child: ColoredBox(
                color: controller.appConstants.colors.powderBlue,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 1.sw,
              child: ColoredBox(
                color: controller.appConstants.colors.lemonChiffon,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 1.sw,
              child: ColoredBox(
                color: controller.appConstants.colors.toxicFrog,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 1.sw,
              child: ColoredBox(
                color: controller.appConstants.colors.thistle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
