import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popover/popover.dart';
import 'package:theme_play/data/models/popover/popover_model.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/enums/app_icons.dart';

extension ShowPopoverExt on BuildContext {
  static const AppColors _colors = AppColors.instance;

  void showPopup({
    required final double? width,
    final double? iconHeight,
    required final List<PopoverModel> children,
  }) {
    showPopover(
      context: this,
      width: width,
      bodyBuilder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: children
            .map(
              (item) => ListTile(
                leading: item.icon.svgWithAttiributes(
                  color: _colors.powderBlue,
                  height: iconHeight ?? 24.h,
                ),
                horizontalTitleGap: 4.w,
                title: Text(
                  item.title,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                onTap: item.onTap,
              ),
            )
            .toList(),
      ),
    );
  }
}
