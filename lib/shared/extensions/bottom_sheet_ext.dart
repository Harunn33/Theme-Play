import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_play/shared/constants/paddings.dart';
import 'package:theme_play/shared/extensions/index.dart';

extension BottomSheetExt on BuildContext {
  void showBottomSheet({
    required Widget child,
    double? height,
  }) {
    showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: 20.radiusVerticalTop,
      ),
      builder: (context) {
        return Container(
          height: height ?? 0.8.sh,
          padding:
              AppPaddings.instance.horizontal + AppPaddings.instance.vertical,
          child: child,
        );
      },
    );
  }
}
