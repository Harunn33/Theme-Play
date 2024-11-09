import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/modules/home/home_controller.dart';
import 'package:theme_play/shared/extensions/border_radius_ext.dart';

class CustomUserThemeItem extends StatelessWidget {
  final HomeController controller;
  final UserThemeModel userTheme;
  final bool hasEditAccess;
  final bool hasShareTheme;
  const CustomUserThemeItem({
    super.key,
    required this.controller,
    required this.userTheme,
    this.hasEditAccess = false,
    this.hasShareTheme = false,
  });

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () => controller.navigateToThemeScreen(
        userTheme: userTheme,
        hasEditAccess: hasEditAccess,
      ),
      child: Container(
        padding: controller.constants.paddings.horizontal +
            controller.constants.paddings.vertical * 2,
        decoration: BoxDecoration(
          color: controller.constants.colors.hexToColor(
            userTheme.style.bgColor,
          ),
          borderRadius: 8.radiusAll,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                userTheme.name,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            8.horizontalSpace,
            Builder(
              builder: (ctx) {
                return Bounceable(
                  onTap: () => controller.showThemeSettings(
                    ctx,
                    userTheme: userTheme,
                    hasEditAccess: hasEditAccess,
                    hasShareTheme: hasShareTheme,
                  ),
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: controller.constants.colors.black,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
