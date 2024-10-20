import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomTypewriterAnimatedText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Duration speed;
  final VoidCallback? onTap;
  const CustomTypewriterAnimatedText({
    super.key,
    required this.text,
    required this.textStyle,
    this.speed = const Duration(milliseconds: 30),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      key: ValueKey(text),
      totalRepeatCount: 1,
      onTap: onTap,
      animatedTexts: [
        TypewriterAnimatedText(
          text,
          speed: speed,
          textStyle: textStyle,
        ),
      ],
    );
  }
}
