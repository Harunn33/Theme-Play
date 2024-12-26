import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/extensions/border_radius_ext.dart';
import 'package:theme_play/shared/extensions/index.dart';
import 'package:theme_play/shared/widgets/network_image/custom_cached_network_image.dart';

class CustomAccountHeader extends StatelessWidget {
  const CustomAccountHeader({
    required this.user,
    required this.profilePhotoUrl,
    required this.encodedUid,
    super.key,
    this.onTap,
    this.onTapCopyUid,
  });
  final VoidCallback? onTap;
  final User user;
  final RxString profilePhotoUrl;
  final VoidCallback? onTapCopyUid;
  final String encodedUid;

  @override
  Widget build(BuildContext context) {
    const appColors = AppColors.instance;
    return ListTile(
      onTap: onTap,
      tileColor: appColors.orochimaru.withOpacity(.2),
      shape: RoundedRectangleBorder(
        borderRadius: 8.radiusAll,
      ),
      leading: Obx(
        () => CustomCachedNetworkImage(
          url: profilePhotoUrl.value,
          width: 50,
          errorWidget: AppIcons.icAvatar.svgWithAttiributes(
            color: appColors.millionGrey,
          ),
        ),
      ),
      title: Text(
        user.userMetadata?['full_name'].toString() ?? '',
        maxLines: 2,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.email ?? '',
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          4.verticalSpace,
          Bounceable(
            onTap: onTapCopyUid,
            child: Row(
              children: [
                AppIcons.icCopy.svgWithAttiributes(
                  color: appColors.black,
                  height: 16.h,
                ),
                4.horizontalSpace,
                Text(
                  encodedUid,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ),
        ],
      ),
      trailing: Icon(
        Icons.chevron_right_outlined,
        size: 28.r,
      ),
    );
  }
}
