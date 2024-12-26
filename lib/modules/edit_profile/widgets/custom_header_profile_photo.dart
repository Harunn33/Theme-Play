import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/modules/edit_profile/edit_profile_controller.dart';
import 'package:theme_play/shared/enums/app_icons.dart';
import 'package:theme_play/shared/widgets/network_image/custom_cached_network_image.dart';

class CustomHeaderProfilePhoto extends StatelessWidget {
  const CustomHeaderProfilePhoto({
    required this.controller,
    super.key,
  });
  final EditProfileController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          Obx(
            () => CustomCachedNetworkImage(
              url: controller.profilePhotoUrl.value,
              width: 150,
              height: 150,
              errorWidget: Padding(
                padding: controller.constants.paddings.all * 3,
                child: AppIcons.icAvatar.svgWithAttiributes(
                  color: controller.constants.colors.millionGrey,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Bounceable(
              onTap: controller.uploadProfilePhoto,
              child: Container(
                padding: controller.constants.paddings.horizontal +
                    controller.constants.paddings.vertical,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: controller.constants.colors.powderBlue,
                ),
                child: Icon(
                  Icons.edit,
                  size: 20.r,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
