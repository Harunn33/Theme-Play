import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomTypewriterAnimatedText extends StatelessWidget {
  const CustomTypewriterAnimatedText({
    required this.text,
    required this.textStyle,
    super.key,
    this.speed = const Duration(milliseconds: 30),
    this.onTap,
  });
  final String text;
  final TextStyle? textStyle;
  final Duration speed;
  final VoidCallback? onTap;

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
