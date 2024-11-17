import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/enums/app_icons.dart';
import 'package:theme_play/shared/extensions/border_radius_ext.dart';

class CustomAccountTile extends StatelessWidget {
  const CustomAccountTile({
    required this.title,
    required this.icon,
    super.key,
    this.onTap,
  });
  final String title;
  final VoidCallback? onTap;
  final AppIcons icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: AppColors.instance.orochimaru.withOpacity(.2),
      shape: RoundedRectangleBorder(
        borderRadius: 8.radiusAll,
      ),
      leading: icon.svgWithAttiributes(
        height: 28.h,
        color: AppColors.instance.black,
      ),
      title: Text(
        title.tr,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      trailing: Icon(
        Icons.chevron_right_outlined,
        size: 28.r,
      ),
    );
  }
}
