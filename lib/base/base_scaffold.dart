import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/connection/connection_controller.dart';
import 'package:theme_play/modules/nav_bar/nav_bar_controller.dart';
import 'package:theme_play/shared/widgets/nav_bar/custom_nav_bar.dart';

class BaseScaffold extends GetView<ConnectionController> {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final NavBarController? navBarController;
  final bool? resizeToAvoidBottomInset;
  const BaseScaffold({
    this.appBar,
    required this.body,
    this.resizeToAvoidBottomInset,
    this.navBarController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      bottomNavigationBar: navBarController != null
          ? CustomNavBar(controller: navBarController!)
          : null,
    );
  }
}
