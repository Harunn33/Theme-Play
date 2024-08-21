import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/modules/home/home_controller.dart';
import 'package:theme_play/shared/extensions/border_radius_ext.dart';

class CustomUserThemeItem extends StatelessWidget {
  final HomeController controller;
  final UserThemeModel userTheme;
  final bool hasEditAccess;
  const CustomUserThemeItem({
    super.key,
    required this.controller,
    required this.userTheme,
    this.hasEditAccess = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: controller.constants.paddings.horizontal,
      shape: RoundedRectangleBorder(
        borderRadius: 8.radiusAll,
      ),
      onTap: () => controller.navigateToThemeScreen(userTheme),
      tileColor: controller.constants.colors.hexToColor(
        userTheme.style.bgColor,
      ),
      title: Text(
        userTheme.name,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      trailing: Builder(
        builder: (context) {
          return Bounceable(
            onTap: () => controller.showThemeSettings(
              context,
              userTheme: userTheme,
              hasEditAccess: hasEditAccess,
            ),
            child: Icon(
              Icons.more_vert_outlined,
              color: controller.constants.colors.black,
            ),
          );
        },
      ),
    );
  }
}
