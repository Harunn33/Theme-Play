import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/constants/paddings.dart';
import 'package:theme_play/shared/extensions/index.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({
    required this.text,
    super.key,
    this.onTap,
    this.bgColor,
    this.textColor,
  });
  final VoidCallback? onTap;
  final String text;
  final Color? bgColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    const appColors = AppColors.instance;
    const appPaddings = AppPaddings.instance;
    return Bounceable(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: appPaddings.horizontal + appPaddings.vertical,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: bgColor?.withOpacity(.5) ??
                  appColors.powderBlue.withOpacity(.5),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
          color: bgColor ?? appColors.powderBlue,
          borderRadius: 6.radiusAll,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: textColor ?? appColors.black,
              ),
        ),
      ),
    );
  }
}
