import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/data/models/theme/theme_model.dart';
import 'package:theme_play/modules/creator/creator_controller.dart';
import 'package:theme_play/shared/constants/fonts.dart';
import 'package:theme_play/shared/widgets/network_image/custom_cached_network_image.dart';

class CustomCategoryList extends StatelessWidget {
  const CustomCategoryList({
    required this.controller,
    required this.themeList,
    super.key,
  });
  final CreatorController controller;
  final List<ThemeModel> themeList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: .13.sh,
      child: ListView.separated(
        padding: controller.constants.paddings.horizontal,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final theme = themeList[index];
          return Obx(
            () => Bounceable(
              onTap: controller.selectedThemeIndex.value == index
                  ? null
                  : () => controller.changeTheme(index),
              child: Column(
                children: [
                  CustomCachedNetworkImage(
                    fit: BoxFit.contain,
                    url: controller.themeListIcons[index],
                    width: 60,
                    height: 60,
                  ),
                  5.verticalSpace,
                  Text(
                    controller.languageHelpers.convertedCurrentLang(
                      texts: theme.type,
                    ),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontFamily:
                              controller.selectedThemeIndex.value != index
                                  ? null
                                  : AppFonts.nunitoBold.value,
                          color: controller.selectedThemeIndex.value != index
                              ? null
                              : controller.constants.colors.powderBlue,
                        ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => 20.horizontalSpace,
        itemCount: themeList.length,
      ),
    );
  }
}
