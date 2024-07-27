import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/modules/account/account_controller.dart';
import 'package:theme_play/modules/account/widgets/index.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/extensions/index.dart';

class AccountScreen extends GetView<AccountController> {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AccountAppBar(),
      body: controller.getProfileInfo().getData.toBuild(
        onSuccess: (user) {
          if (user == null) return const SizedBox.shrink();
          return Padding(
            padding: controller.appPaddings.horizontal +
                controller.appPaddings.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAccountHeader(user: user),
                12.verticalSpace,
                Text(
                  controller.appStrings.general,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                4.verticalSpace,
                CustomAccountTile(
                  onTap: controller.redirectionToChangeLanguage,
                  icon: AppIcons.icLanguage,
                  title: controller.appStrings.changeLanguage,
                ),
                8.verticalSpace,
                CustomAccountTile(
                  onTap: () => controller.signOut(),
                  icon: AppIcons.icSignOut,
                  title: controller.appStrings.signOut,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
