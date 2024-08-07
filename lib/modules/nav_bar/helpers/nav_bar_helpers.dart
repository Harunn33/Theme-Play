import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:popover/popover.dart';
import 'package:theme_play/modules/account/account_screen.dart';
import 'package:theme_play/modules/home/home_screen.dart';
import 'package:theme_play/modules/nav_bar/enums/nav_bar_pages.dart';
import 'package:theme_play/modules/nav_bar/extensions/nav_bar_ext.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/index.dart';

final class NavBarHelpers {
  NavBarHelpers._();

  static final NavBarHelpers instance = NavBarHelpers._();

  final List<Widget> screens = [
    const HomeScreen(),
    const AccountScreen(),
  ];

  void onTapFAB(BuildContext context) {
    const ConstantsInstances constants = ConstantsInstances.instance;
    showPopover(
      context: context,
      bodyBuilder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(
              Icons.design_services_outlined,
              color: constants.colors.powderBlue,
            ),
            title: Text(
              constants.strings.designYourPage.tr,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            onTap: () {
              Get.back();
              Get.toNamed(Routes.creator);
            },
          ),
        ],
      ),
      direction: PopoverDirection.bottom,
      width: .6.sw,
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
