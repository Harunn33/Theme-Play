import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/nav_bar/nav_bar_controller.dart';

class NavbarScreen extends GetView<NavBarController> {
  const NavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: PopScope(
        onPopInvoked: (a) {},
        child: Obx(
          () => IndexedStack(
            index: controller.currentIndex.value,
            children: controller.navBarHelpers.screens,
          ),
        ),
      ),
      navBarController: controller,
    );
  }
}
