import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/modules/account/account_controller.dart';

class AccountScreen extends GetView<AccountController> {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Screen'),
      ),
      body: const Center(
        child: Text('Account Screen'),
      ),
    );
  }
}
