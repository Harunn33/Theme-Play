import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/paddings.dart';
import 'package:theme_play/shared/extensions/index.dart';

class CustomPrimaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  const CustomPrimaryButton({
    super.key,
    this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    const AppColors appColors = AppColors.instance;
    const AppPaddings appPaddings = AppPaddings.instance;
    return Bounceable(
      onTap: onTap,
      child: Container(
        padding: appPaddings.horizontal + appPaddings.vertical,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: appColors.black.withOpacity(.4),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
          color: appColors.thistle,
          borderRadius: 6.radiusAll,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
