import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/connection/connection_controller.dart';

class BaseScaffold extends GetView<ConnectionController> {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final bool hasBottomNavBar;
  final bool? resizeToAvoidBottomInset;
  const BaseScaffold({
    this.appBar,
    required this.body,
    this.resizeToAvoidBottomInset,
    this.hasBottomNavBar = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      // bottomNavigationBar: hasBottomNavBar
      //     ? CustomBottomNavBar(controller: controller.navbarController)
      //     : null,
    );
  }
}
