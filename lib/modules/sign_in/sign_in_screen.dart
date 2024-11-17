import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/base/base_scaffold.dart';
import 'package:theme_play/modules/sign_in/sign_in_controller.dart';
import 'package:theme_play/shared/widgets/buttons/custom_primary_button.dart';

class SignInScreen extends GetView<SignInController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPrimaryButton(
              onTap: () => controller.signInWithGoogle(),
              text: 'Login with Google',
            ),
          ],
        ),
      ),
    );
  }
}
