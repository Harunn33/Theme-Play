import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/data/network/services/supabase_service.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/constants/strings.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final ConstantsInstances _appConstants = ConstantsInstances.instance;

  AppStrings get appStrings => _appConstants.strings;
  AppColors get appColors => _appConstants.colors;

  final RxDouble height = 2.0.obs;
  final RxDouble containerSize = 1.5.obs;
  final RxDouble textOpacity = 0.0.obs;
  final RxDouble containerOpacity = 0.0.obs;

  late final AnimationController _controller;
  late final Animation<double> animation;

  @override
  void onInit() {
    super.onInit();
    startAnimation();
  }

  @override
  void onClose() {
    _controller.dispose();
    super.onClose();
  }

  Future<void> redirection() async {
    final SupabaseClient client = SupabaseService.client;
    if (client.auth.currentSession == null) {
      return Get.offAllNamed(Routes.signIn);
    }
    Get.offAllNamed(Routes.navBar);
  }

  void startAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: 3.seconds,
    );

    animation = Tween<double>(begin: 40, end: 20).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    )..addListener(() {
        textOpacity.value = 1.0;
      });

    _controller.forward();

    Timer(1.seconds, () {
      height.value = 1.06;
    });

    Timer(1.seconds, () {
      containerSize.value = 2;
      containerOpacity.value = 1;
    });

    Timer(2.seconds, () {
      redirection();
    });
  }
}
