import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/extensions/border_radius_ext.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    required this.textEditingController,
    required this.labelText,
    super.key,
    this.readOnly = false,
    this.validator,
    this.maxLines = 1,
    this.maxLength,
    this.textCapitalization = TextCapitalization.none,
    this.focusedBorderColor,
  });
  final TextEditingController textEditingController;
  final String labelText;
  final bool readOnly;
  final String? Function(String?)? validator;
  final FocusNode focusNode = FocusNode();
  final int? maxLines;
  final int? maxLength;
  final TextCapitalization textCapitalization;
  final Color? focusedBorderColor;

  @override
  Widget build(BuildContext context) {
    const colors = AppColors.instance;
    return TextFormField(
      readOnly: readOnly,
      enabled: !readOnly,
      focusNode: focusNode,
      onTapOutside: (event) => focusNode.unfocus(),
      controller: textEditingController,
      maxLines: maxLines,
      maxLength: maxLength,
      textCapitalization: textCapitalization,
      minLines: 1,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: readOnly ? colors.orochimaru : null,
          ),
      cursorColor: focusedBorderColor ?? colors.powderBlue,
      decoration: InputDecoration(
        label: Text(
          labelText.tr,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        border: OutlineInputBorder(
          borderRadius: 8.radiusAll,
          borderSide: BorderSide(
            color: colors.orochimaru,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: 8.radiusAll,
          borderSide: BorderSide(
            color: focusedBorderColor ?? colors.orochimaru,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: 8.radiusAll,
          borderSide: BorderSide(
            color: colors.orochimaru,
          ),
        ),
      ),
      validator: validator,
    );
  }
}
