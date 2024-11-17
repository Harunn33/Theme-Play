import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/shared/constants/colors.dart';

enum LoadingStatus { loading, loaded }

extension LoadingDialogExt on LoadingStatus {
  void showLoadingDialog() {
    if (this == LoadingStatus.loading) {
      Get.dialog(
        PopScope(
          canPop: false,
          child: Center(
            child: CircularProgressIndicator(
              color: AppColors.instance.powderBlue,
              strokeWidth: 6,
            ),
          ),
        ),
        barrierDismissible: false,
        barrierColor: AppColors.instance.black.withOpacity(.4),
      );
      return;
    }
    if (Get.isDialogOpen ?? false) {
      Get.close(1);
    }
  }
}
