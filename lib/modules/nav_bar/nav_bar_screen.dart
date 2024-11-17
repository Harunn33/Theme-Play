import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/nav_bar/nav_bar_controller.dart';
import 'package:theme_play/modules/nav_bar/widgets/custom_fab.dart';

class NavbarScreen extends GetView<NavBarController> {
  const NavbarScreen({
    super.key,
    this.appBar,
  });
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: appBar,
      resizeToAvoidBottomInset: false,
      body: PopScope(
        onPopInvoked: (a) {},
        child: Obx(
          () => IndexedStack(
            index: controller.currentIndex.value,
            children: controller.navBarHelpers.screens,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomFAB(),
      navBarController: controller,
    );
  }
}
