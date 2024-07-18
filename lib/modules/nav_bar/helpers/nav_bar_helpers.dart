import 'package:flutter/material.dart';
import 'package:theme_play/modules/account/account_screen.dart';
import 'package:theme_play/modules/home/home_screen.dart';
import 'package:theme_play/modules/nav_bar/enums/nav_bar_pages.dart';
import 'package:theme_play/modules/nav_bar/extensions/nav_bar_ext.dart';

final class NavBarHelpers {
  NavBarHelpers._();

  static final NavBarHelpers instance = NavBarHelpers._();

  final List<Widget> screens = [
    const HomeScreen(),
    const AccountScreen(),
  ];

  BottomNavigationBarItem build({required NavBarPages type}) {
    return BottomNavigationBarItem(
      activeIcon: type.icon,
      icon: type.inActiveIcon,
      label: type.title,
    );
  }
}
