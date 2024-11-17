import 'package:flutter/material.dart';
import 'package:theme_play/data/models/user_theme/index.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/widgets/editable_widget/index.dart';

class CustomThemeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomThemeAppBar({
    required this.userThemeModel,
    super.key,
    this.isEditingMode = false,
  });
  final UserThemeModel userThemeModel;
  final bool isEditingMode;

  @override
  Widget build(BuildContext context) {
    final constantsInstances = ConstantsInstances.instance;
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
    final constantsInstances = ConstantsInstances.instance;
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
