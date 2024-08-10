import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:theme_play/shared/constants/paddings.dart';
import 'package:theme_play/shared/extensions/index.dart';

class CustomSecondaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final Color bgColor;
  final double borderRadius;
  final Color textColor;
  const CustomSecondaryButton({
    super.key,
    this.onTap,
    required this.text,
    required this.bgColor,
    required this.borderRadius,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    const AppPaddings appPaddings = AppPaddings.instance;
    return Bounceable(
      onTap: onTap,
      child: Container(
        padding: appPaddings.horizontal + appPaddings.vertical,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: borderRadius.radiusAll,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: textColor,
              ),
        ),
      ),
    );
  }
}
