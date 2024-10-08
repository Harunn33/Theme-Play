import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/data/local/index.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/enums/local_storage_keys.dart';
import 'package:theme_play/shared/extensions/border_radius_ext.dart';
import 'package:theme_play/shared/widgets/network_image/custom_cached_network_image.dart';

class CustomAccountHeader extends StatelessWidget {
  final VoidCallback? onTap;
  final User user;
  final RxString profilePhotoUrl;
  const CustomAccountHeader({
    super.key,
    this.onTap,
    required this.user,
    required this.profilePhotoUrl,
  });

  @override
  Widget build(BuildContext context) {
    const AppColors appColors = AppColors.instance;
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
          errorDefaultImage: LocalStorageService.instance.retrieveData(
            LocalStorageKeys.profilePhoto.name,
          ),
        ),
      ),
      title: Text(
        user.userMetadata?["full_name"],
        maxLines: 2,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      subtitle: Text(
        user.email ?? "",
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.labelSmall,
      ),
      trailing: Icon(
        Icons.chevron_right_outlined,
        size: 28.r,
      ),
    );
  }
}
