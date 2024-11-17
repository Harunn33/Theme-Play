import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/modules/home/home_controller.dart';
import 'package:theme_play/modules/home/widgets/user_theme_item/custom_user_theme_item.dart';
import 'package:theme_play/shared/extensions/future_builder_ext.dart';

class HomeMyTabView extends StatelessWidget {
  const HomeMyTabView({
    required this.controller,
    super.key,
  });
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RefreshIndicator(
        onRefresh: () async => controller.refreshMyThemesTab(),
        child: controller.futureUserThemes.value.getData.toBuild(
          onSuccess: (userThemeList) {
            if (userThemeList == null) {
              return const SizedBox.shrink();
            }
            return ListView.separated(
              padding: controller.constants.paddings.horizontal +
                  controller.constants.paddings.vertical * 2,
              itemBuilder: (_, index) {
                final userTheme = userThemeList[index];
                return CustomUserThemeItem(
                  controller: controller,
                  userTheme: userTheme,
                  hasEditAccess: true,
                  hasShareTheme: true,
                );
              },
              separatorBuilder: (_, __) => 12.verticalSpace,
              itemCount: userThemeList.length,
            );
          },
        ),
      ),
    );
  }
}
