import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension AppRadiusExt on num {
  BorderRadius get radiusVertical => BorderRadius.vertical(
        top: Radius.circular(toDouble().r),
        bottom: Radius.circular(toDouble().r),
      );
  BorderRadius get radiusVerticalTop => BorderRadius.vertical(
        top: Radius.circular(toDouble().r),
      );
  BorderRadius get radiusVerticalBottom => BorderRadius.vertical(
        bottom: Radius.circular(toDouble().r),
      );
  BorderRadius get radiusHorizontal => BorderRadius.horizontal(
        left: Radius.circular(toDouble().r),
        right: Radius.circular(toDouble().r),
      );
  BorderRadius get radiusAll => BorderRadius.circular(toDouble().r);
  BorderRadius get radiusTopLeft => BorderRadius.only(
        topLeft: Radius.circular(toDouble().r),
      );
  BorderRadius get radiusTopRight => BorderRadius.only(
        topRight: Radius.circular(toDouble().r),
      );
  BorderRadius get radiusBottomLeft => BorderRadius.only(
        bottomLeft: Radius.circular(toDouble().r),
      );
  BorderRadius get radiusBottomRight => BorderRadius.only(
        bottomRight: Radius.circular(toDouble().r),
      );
}
