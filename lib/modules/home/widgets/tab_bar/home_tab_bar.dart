import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/modules/home/home_controller.dart';

class HomeTabBar extends StatelessWidget {
  final HomeController controller;
  const HomeTabBar({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: controller.constants.colors.white,
        boxShadow: [
          BoxShadow(
            color: controller.constants.colors.black.withOpacity(.1),
            blurRadius: 4,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: TabBar(
        controller: controller.tabController,
        dividerHeight: 0,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            text: controller.constants.strings.my.tr,
          ),
          Tab(
            text: controller.constants.strings.sharedToMe.tr,
          ),
        ],
      ),
    );
  }
}
