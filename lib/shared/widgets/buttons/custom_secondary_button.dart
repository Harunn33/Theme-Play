import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:theme_play/shared/constants/paddings.dart';
import 'package:theme_play/shared/extensions/index.dart';

class CustomSecondaryButton extends StatelessWidget {
  const CustomSecondaryButton({
    required this.text,
    required this.bgColor,
    required this.borderRadius,
    super.key,
    this.onTap,
    this.textColor = Colors.white,
  });
  final VoidCallback? onTap;
  final String text;
  final Color bgColor;
  final double borderRadius;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    const appPaddings = AppPaddings.instance;
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
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: textColor,
              ),
        ),
      ),
    );
  }
}
