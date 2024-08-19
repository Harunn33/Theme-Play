import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/extensions/index.dart';

extension CustomDialogExt on BuildContext {
  static const ConstantsInstances _constants = ConstantsInstances.instance;
  void showDialog({
    required final Widget child,
  }) {
    Get.dialog(
      Padding(
        padding: _constants.paddings.horizontal * 2,
        child: Center(
          child: Material(
            color: _constants.colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: 8.radiusAll,
            ),
            child: child,
          ),
        ),
      ),
      barrierColor: AppColors.instance.black.withOpacity(.4),
      useSafeArea: true,
    );
  }
}
