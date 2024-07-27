import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/extensions/border_radius_ext.dart';

class CustomAccountHeader extends StatelessWidget {
  final VoidCallback? onTap;
  final User user;
  const CustomAccountHeader({
    super.key,
    this.onTap,
    required this.user,
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
      leading: const CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(
          "https://picsum.photos/200/200",
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
