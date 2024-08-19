import 'package:flutter/material.dart';

class CustomRadioMenuButton<T> extends StatelessWidget {
  final void Function(T?)? onChanged;
  final T value;
  final T groupValue;
  const CustomRadioMenuButton({
    super.key,
    this.onChanged,
    required this.value,
    required this.groupValue,
  });

  @override
  Widget build(BuildContext context) {
    return RadioMenuButton(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      child: Text(
        value.toString(),
        style: Theme.of(context).textTheme.labelSmall,
      ),
    );
  }
}
