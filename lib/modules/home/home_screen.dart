import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';
import 'package:theme_play/data/network/repository/auth/index.dart';
import 'package:theme_play/modules/home/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Bounceable(
        onTap: () {
          final AuthRepository authRepository = AuthRepository.instance;
          authRepository.signOut();
        },
        child: const Center(
          child: Text('Home Screen'),
        ),
      ),
    );
  }
}
