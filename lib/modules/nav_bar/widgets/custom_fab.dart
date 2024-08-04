import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_play/modules/nav_bar/helpers/nav_bar_helpers.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/enums/app_icons.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => NavBarHelpers.instance.onTapCreatePage(context),
      child: AppIcons.icSpray.svgWithAttiributes(
        color: AppColors.instance.white,
        height: 30.h,
      ),
    );
  }
}
