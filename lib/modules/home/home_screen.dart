import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/modules/home/home_controller.dart';
import 'package:theme_play/modules/home/widgets/index.dart';
import 'package:theme_play/shared/widgets/index.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
        title: controller.constants.strings.appName,
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeHeader(
            controller: controller,
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  HomeTabBar(
                    controller: controller,
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: controller.tabController,
                      children: [
                        HomeMyTabView(
                          controller: controller,
                        ),
                        HomeSharedToMeView(
                          controller: controller,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
