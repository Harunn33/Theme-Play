import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/constants/paddings.dart';
import 'package:theme_play/shared/extensions/index.dart';

class AnimatedSearchBar extends StatelessWidget {
  final RxBool isExpanded;
  final TextEditingController textEditingController;
  final AnimationController animationController;
  final void Function(String)? onChanged;
  final VoidCallback? onTapSearchButton;
  final VoidCallback? onTapClearButton;
  const AnimatedSearchBar({
    super.key,
    required this.isExpanded,
    required this.textEditingController,
    required this.animationController,
    this.onChanged,
    this.onTapSearchButton,
    this.onTapClearButton,
  });

  @override
  Widget build(BuildContext context) {
    const constants = ConstantsInstances.instance;
    return Obx(
      () => AnimatedContainer(
        duration: 500.milliseconds,
        width: isExpanded.value ? 1.sw : 45.r,
        height: 45.r,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: constants.colors.white,
          borderRadius: isExpanded.value ? 8.radiusAll : 30.radiusAll,
          boxShadow: [
            BoxShadow(
              color: constants.colors.powderBlue,
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: 2.5.padLeft,
              child: Bounceable(
                onTap: onTapSearchButton,
                child: CircleAvatar(
                  backgroundColor: constants.colors.powderBlue,
                  child: Icon(
                    Icons.search,
                    size: 30.r,
                    color: constants.colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: AnimatedOpacity(
                opacity: isExpanded.value ? 1 : 0,
                duration: 200.milliseconds,
                child: TextFormField(
                  onChanged: onChanged,
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  controller: textEditingController,
                  style: Theme.of(context).textTheme.titleSmall,
                  decoration: InputDecoration(
                    contentPadding: AppPaddings.instance.horizontal,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    suffixIcon: Visibility(
                      visible: isExpanded.value,
                      child: Bounceable(
                        onTap: onTapClearButton,
                        child: Padding(
                          padding: 8.padAll,
                          child: AnimatedBuilder(
                            animation: animationController,
                            builder: (context, child) {
                              return Transform.rotate(
                                angle: animationController.value * 2 * pi,
                                child: child,
                              );
                            },
                            child: Icon(
                              Icons.close,
                              size: 20.r,
                            ),
                          ),
                        ),
                      ),
                    ),
                    label: Text(
                      constants.strings.searchYourThemes.tr,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
