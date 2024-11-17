import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_play/shared/constants/colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.onTap,
    required this.icon,
    super.key,
    this.hasDecoration = false,
  });
  final VoidCallback? onTap;
  final IconData icon;
  final bool hasDecoration;

  @override
  Widget build(BuildContext context) {
    const colors = AppColors.instance;
    return Bounceable(
      onTap: onTap,
      child: Container(
        decoration: !hasDecoration
            ? null
            : BoxDecoration(
                color: colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: colors.powderBlue,
                    blurRadius: 10,
                  ),
                ],
              ),
        child: Container(
          width: 45.r,
          height: 45.r,
          decoration: BoxDecoration(
            color: colors.powderBlue,
            shape: BoxShape.circle,
            border: Border.all(
              color: colors.white,
              width: 2.w,
            ),
          ),
          child: Icon(
            icon,
            size: 30.r,
            color: colors.black,
          ),
        ),
      ),
    );
  }
}
