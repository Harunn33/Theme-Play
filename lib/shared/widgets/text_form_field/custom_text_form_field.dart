import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/extensions/border_radius_ext.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String labelText;
  final bool readOnly;
  final String? Function(String?)? validator;
  final FocusNode focusNode = FocusNode();
  final int? maxLines;
  final int? maxLength;
  final TextCapitalization textCapitalization;
  CustomTextFormField({
    super.key,
    required this.textEditingController,
    required this.labelText,
    this.readOnly = false,
    this.validator,
    this.maxLines = 1,
    this.maxLength,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  Widget build(BuildContext context) {
    const AppColors colors = AppColors.instance;
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
