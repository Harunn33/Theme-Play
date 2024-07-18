import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:theme_play/modules/nav_bar/enums/nav_bar_pages.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/strings.dart';
import 'package:theme_play/shared/enums/app_icons.dart';

extension NavBarExt on NavBarPages {
  String get title {
    switch (this) {
      case NavBarPages.home:
        return AppStrings.instance.home;
      case NavBarPages.account:
        return AppStrings.instance.account;
    }
  }

  SvgPicture get inActiveIcon {
    switch (this) {
      case NavBarPages.home:
        return AppIcons.icNavbarHome.svgWithAttiributes(
          color: AppColors.instance.orochimaru,
          height: 20.r,
        );
      case NavBarPages.account:
        return AppIcons.icNavbarAccount.svgWithAttiributes(
          color: AppColors.instance.orochimaru,
          height: 20.r,
        );
    }
  }

  SvgPicture get icon {
    switch (this) {
      case NavBarPages.home:
        return AppIcons.icNavbarHome.svgWithAttiributes(
          color: AppColors.instance.mattPink,
          height: 20.r,
        );
      case NavBarPages.account:
        return AppIcons.icNavbarAccount.svgWithAttiributes(
          color: AppColors.instance.mattPink,
          height: 20.r,
        );
    }
  }
}
