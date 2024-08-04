import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:theme_play/modules/nav_bar/enums/nav_bar_pages.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/enums/app_icons.dart';

extension NavBarExt on NavBarPages {
  static const ConstantsInstances _constants = ConstantsInstances.instance;
  String get title {
    switch (this) {
      case NavBarPages.home:
        return _constants.strings.home.tr;
      case NavBarPages.account:
        return _constants.strings.account.tr;
    }
  }

  Widget get inActiveIcon {
    switch (this) {
      case NavBarPages.home:
        return AppIcons.icNavbarHome.svgWithAttiributes(
          color: _constants.colors.orochimaru,
          height: 20.r,
        );
      case NavBarPages.account:
        return AppIcons.icNavbarAccount.svgWithAttiributes(
          color: _constants.colors.orochimaru,
          height: 20.r,
        );
    }
  }

  SvgPicture get icon {
    switch (this) {
      case NavBarPages.home:
        return AppIcons.icNavbarHome.svgWithAttiributes(
          color: _constants.colors.black,
          height: 20.r,
        );
      case NavBarPages.account:
        return AppIcons.icNavbarAccount.svgWithAttiributes(
          color: _constants.colors.black,
          height: 20.r,
        );
    }
  }
}
