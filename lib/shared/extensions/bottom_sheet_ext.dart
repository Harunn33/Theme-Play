import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/paddings.dart';
import 'package:theme_play/shared/extensions/index.dart';

extension BottomSheetExt on BuildContext {
  void showBottomSheet({
    required Widget child,
    double? height,
  }) {
    Get.bottomSheet(
      Material(
        borderRadius: 20.radiusVerticalTop,
        color: AppColors.instance.white,
        child: Container(
          height: height ?? .8.sh,
          padding:
              AppPaddings.instance.horizontal + AppPaddings.instance.vertical,
          child: child,
        ),
      ),
      isScrollControlled: true,
    );
  }
}
