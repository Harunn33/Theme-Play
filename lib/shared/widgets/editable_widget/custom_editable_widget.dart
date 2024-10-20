import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/modules/edit_theme/enums/index.dart';
import 'package:theme_play/modules/edit_theme/extensions/index.dart';
import 'package:theme_play/shared/constants/constants_instances.dart';
import 'package:theme_play/shared/extensions/index.dart';
import 'package:theme_play/shared/helpers/language_helpers.dart';

class CustomEditableWidget extends StatelessWidget {
  final ConstantsInstances constants = ConstantsInstances.instance;
  final LanguageHelpers languageHelpers = LanguageHelpers.instance;
  final Widget child;
  final UserThemeModel userThemeModel;
  final EditableWidgetType editableWidgetType;
  const CustomEditableWidget({
    super.key,
    required this.child,
    required this.userThemeModel,
    this.editableWidgetType = EditableWidgetType.name,
  });

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () => context.showBottomSheet(
        isDismissible: false,
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
