import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_play/modules/nav_bar/helpers/nav_bar_helpers.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/enums/app_images.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () => NavBarHelpers.instance.onTapFAB(context),
      child: Container(
        width: 60.r,
        height: 60.r,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.instance.white,
            width: 2.w,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.instance.powderBlue,
              blurRadius: 10,
            ),
          ],
        ),
        child: CircleAvatar(
          backgroundColor: AppColors.instance.powderBlue,
          child: AppImages.paintRoller.pngWithAttiributes(
            color: AppColors.instance.black,
            height: 30.r,
          ),
        ),
      ),
    );
  }
}
