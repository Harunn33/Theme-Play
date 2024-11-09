import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/modules/home/home_controller.dart';
import 'package:theme_play/modules/home/widgets/user_theme_item/custom_user_theme_item.dart';
import 'package:theme_play/shared/extensions/future_builder_ext.dart';

class HomeSharedToMeView extends StatelessWidget {
  final HomeController controller;
  const HomeSharedToMeView({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RefreshIndicator(
        onRefresh: () async => controller.refreshSharedThemesTab(),
        child: controller.futureSharedUserThemes.value.getData.toBuild(
          onSuccess: (sharedUserThemeList) {
            if (sharedUserThemeList == null) {
              return const SizedBox.shrink();
            }
            return ListView.separated(
              padding: controller.constants.paddings.horizontal +
                  controller.constants.paddings.vertical * 2,
              itemBuilder: (_, index) {
                final userTheme = sharedUserThemeList[index];
                final editAccess = controller.hasEditAccessList[index];
                return CustomUserThemeItem(
                  controller: controller,
                  userTheme: userTheme,
                  hasEditAccess: editAccess,
                );
              },
              separatorBuilder: (_, __) => 12.verticalSpace,
              itemCount: sharedUserThemeList.length,
            );
          },
        ),
      ),
    );
  }
}
