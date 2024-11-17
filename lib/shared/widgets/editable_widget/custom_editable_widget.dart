import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/modules/edit_theme/enums/index.dart';
import 'package:theme_play/modules/edit_theme/extensions/index.dart';
import 'package:theme_play/shared/constants/constants_instances.dart';
import 'package:theme_play/shared/extensions/index.dart';

class CustomEditableWidget extends StatelessWidget {
  const CustomEditableWidget({
    required this.child,
    required this.userThemeModel,
    super.key,
    this.editableWidgetType = EditableWidgetType.name,
    this.isDismissible = true,
  });
  final Widget child;
  final UserThemeModel userThemeModel;
  final EditableWidgetType editableWidgetType;
  final bool isDismissible;

  @override
  Widget build(BuildContext context) {
    final constants = ConstantsInstances.instance;
    return Bounceable(
      onTap: () => context.showBottomSheet(
        isDismissible: isDismissible,
        child: editableWidgetType.getBottomSheetByEditableWidgetType(
          userThemeModel: userThemeModel,
        ),
      ),
      child: Badge(
        largeSize: 21.sp,
        backgroundColor: constants.colors.hexToColor(
          userThemeModel.style.titleStyle.color,
        ),
        label: Icon(
          Icons.edit,
          color: constants.colors.white,
          size: 14.sp,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: constants.colors.hexToColor(
                userThemeModel.style.titleStyle.color,
              ),
            ),
            borderRadius: 8.radiusAll,
          ),
          padding: constants.paddings.horizontal + 2.padVertical,
          child: child,
        ),
      ),
    );
  }
}
