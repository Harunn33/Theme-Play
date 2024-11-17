import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/paddings.dart';
import 'package:theme_play/shared/extensions/index.dart';

extension BottomSheetExt on BuildContext {
  void showBottomSheet({
    required Widget child,
    bool isDismissible = true,
    double? height,
  }) {
    Get.bottomSheet(
      Material(
        borderRadius: 20.radiusVerticalTop,
        color: AppColors.instance.white,
        child: Container(
          padding:
              AppPaddings.instance.horizontal + AppPaddings.instance.vertical,
          child: PopScope(
            canPop: isDismissible,
            child: child,
          ),
        ),
      ),
      isScrollControlled: true,
      isDismissible: isDismissible,
      enableDrag: isDismissible,
    );
  }
}
