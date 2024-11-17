import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:theme_play/modules/home/home_controller.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({
    required this.controller,
    super.key,
  });
  final HomeController controller;

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
      child: ShowCaseWidget(
        builder: (showcaseContext) {
          controller.showcaseTabContext = showcaseContext;
          return TabBar(
            controller: controller.tabController,
            dividerHeight: 0,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Showcase(
                key: controller.myThemeShowcaseKey,
                description:
                    controller.constants.strings.homeShowcaseMyThemesMessage.tr,
                child: Tab(
                  text: controller.constants.strings.my.tr,
                ),
              ),
              Showcase(
                key: controller.themeSharedWithMeShowcaseKey,
                description: controller
                    .constants.strings.homeShowcaseSharedThemesMessage.tr,
                child: Tab(
                  text: controller.constants.strings.sharedToMe.tr,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
