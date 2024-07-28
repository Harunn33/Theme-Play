import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/shared/constants/index.dart';

class AccountAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AccountAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    const ConstantsInstances appConstants = ConstantsInstances.instance;
    return AppBar(
      leadingWidth: 1.sw,
      leading: Padding(
        padding: appConstants.paddings.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              appConstants.strings.appName,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              appConstants.strings.appDescription.tr,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontSize: 11.sp,
                    color: appConstants.colors.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
