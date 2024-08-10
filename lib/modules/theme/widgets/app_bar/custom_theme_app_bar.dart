import 'package:flutter/material.dart';
import 'package:theme_play/modules/theme/theme_controller.dart';

class CustomThemeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ThemeController controller;
  const CustomThemeAppBar({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: controller.constants.colors.hexToColor(
          controller.userThemeModel.style.titleStyle.color,
        ),
      ),
      backgroundColor: controller.constants.colors.hexToColor(
        controller.userThemeModel.style.bgColor,
      ),
      title: Text(
        controller.userThemeModel.name,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: controller.constants.colors.hexToColor(
                controller.userThemeModel.style.titleStyle.color,
              ),
              fontSize: controller.userThemeModel.style.titleStyle.size,
            ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
