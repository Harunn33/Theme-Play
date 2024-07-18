import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/modules/nav_bar/enums/nav_bar_pages.dart';
import 'package:theme_play/modules/nav_bar/nav_bar_controller.dart';

class CustomNavBar extends StatelessWidget {
  final NavBarController controller;
  const CustomNavBar({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        type: BottomNavigationBarType.fixed,
        onTap: controller.onTapNavBarItem,
        items: [
          controller.navBarHelpers.build(
            type: NavBarPages.home,
          ),
          controller.navBarHelpers.build(
            type: NavBarPages.account,
          ),
        ],
      ),
    );
  }
}
