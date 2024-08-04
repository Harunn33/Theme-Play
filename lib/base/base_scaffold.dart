import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/connection/connection_controller.dart';
import 'package:theme_play/modules/nav_bar/nav_bar_controller.dart';
import 'package:theme_play/shared/widgets/index.dart';

class BaseScaffold extends GetView<ConnectionController> {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final NavBarController? navBarController;
  final bool? resizeToAvoidBottomInset;
  final Color? backgroundColor;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  const BaseScaffold({
    super.key,
    this.appBar,
    required this.body,
    this.navBarController,
    this.resizeToAvoidBottomInset,
    this.backgroundColor,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: backgroundColor,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomNavigationBar: navBarController != null
          ? CustomNavBar(controller: navBarController!)
          : null,
    );
  }
}
