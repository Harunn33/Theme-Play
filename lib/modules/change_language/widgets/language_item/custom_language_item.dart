import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theme_play/shared/constants/constants_instances.dart';
import 'package:theme_play/shared/extensions/border_radius_ext.dart';

class CustomLanguageItem extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final bool isSelected;
  const CustomLanguageItem({
    super.key,
    this.onTap,
    required this.title,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    const ConstantsInstances constants = ConstantsInstances.instance;
    return Bounceable(
      onTap: isSelected ? null : onTap,
      child: Container(
        width: 1.sw,
        padding: constants.paddings.horizontal + constants.paddings.vertical,
        decoration: BoxDecoration(
          color:
              isSelected ? constants.colors.powderBlue : constants.colors.white,
          border: isSelected
              ? null
              : Border.all(
                  color: constants.colors.powderBlue,
                ),
          borderRadius: 8.radiusAll,
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}