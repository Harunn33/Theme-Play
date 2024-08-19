import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/data/models/popover/popover_model.dart';
import 'package:theme_play/modules/account/account_screen.dart';
import 'package:theme_play/modules/home/home_screen.dart';
import 'package:theme_play/modules/nav_bar/enums/nav_bar_pages.dart';
import 'package:theme_play/modules/nav_bar/extensions/nav_bar_ext.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/extensions/show_popover_ext.dart';

final class NavBarHelpers {
  NavBarHelpers._();

  static final NavBarHelpers instance = NavBarHelpers._();

  final List<Widget> screens = [
    const HomeScreen(),
    const AccountScreen(),
  ];

  void onTapFAB(BuildContext context) {
    const ConstantsInstances constants = ConstantsInstances.instance;
    context.showPopup(
      width: .6.sw,
      children: [
        PopoverModel(
          icon: AppIcons.icDesign,
          title: constants.strings.designYourPage.tr,
          onTap: () {
            Get.back();
            Get.toNamed(Routes.creator);
          },
        ),
      ],
    );
  }

  BottomNavigationBarItem build({required NavBarPages type}) {
    return BottomNavigationBarItem(
      activeIcon: type.icon,
      icon: type.inActiveIcon,
      label: type.title,
    );
  }
}
