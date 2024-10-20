import 'package:flutter/material.dart';
import 'package:theme_play/data/models/user_theme/index.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/widgets/editable_widget/index.dart';

class CustomThemeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ConstantsInstances constantsInstances = ConstantsInstances.instance;
  final UserThemeModel userThemeModel;
  final bool isEditingMode;
  const CustomThemeAppBar({
    super.key,
    required this.userThemeModel,
    this.isEditingMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: constantsInstances.colors.hexToColor(
          userThemeModel.style.titleStyle.color,
        ),
      ),
      backgroundColor: constantsInstances.colors.hexToColor(
        userThemeModel.style.bgColor,
      ),
      title: isEditingMode
          ? CustomEditableWidget(
              userThemeModel: userThemeModel,
              child: _buildTitle(context),
            )
          : _buildTitle(context),
    );
  }

  Text _buildTitle(BuildContext context) {
    return Text(
      userThemeModel.name,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: constantsInstances.colors.hexToColor(
              userThemeModel.style.titleStyle.color,
            ),
            fontSize: userThemeModel.style.titleStyle.size,
          ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
