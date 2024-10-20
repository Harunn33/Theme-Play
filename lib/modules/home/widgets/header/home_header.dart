import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/modules/home/home_controller.dart';
import 'package:theme_play/shared/widgets/buttons/custom_icon_button.dart';
import 'package:theme_play/shared/widgets/search_bar/custom_animated_search_bar.dart';

class HomeHeader extends StatelessWidget {
  final HomeController controller;
  const HomeHeader({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: controller.constants.paddings.horizontal +
          controller.constants.paddings.vertical,
      decoration: BoxDecoration(
        color: controller.constants.colors.white,
        boxShadow: [
          BoxShadow(
            color: controller.constants.colors.black.withOpacity(.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Obx(
        () => OverflowBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              controller.selectedTabIndex.value == 0
                  ? controller.constants.strings.allCreatedThemes.tr
                  : controller.constants.strings.sharedThemesWithMe.tr,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            6.verticalSpace,
            Visibility(
              visible: controller.selectedTabIndex.value == 0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: AnimatedSearchBar(
                      onTapSearchButton: controller.toggleSearchBar,
                      onTapClearButton: controller.clearSearchBar,
                      onChanged: controller.searchOnChanged,
                      isExpanded: controller.isSearchBarExpanded,
                      textEditingController: controller.searchController,
                      animationController: controller.animationController,
                    ),
                  ),
                  4.horizontalSpace,
                  Obx(
                    () => Badge.count(
                      largeSize: 18.r,
                      textStyle:
                          Theme.of(context).textTheme.labelSmall?.copyWith(
                                fontSize: 12.sp,
                              ),
                      count: controller.filterBadgeCount.value,
                      isLabelVisible: controller.isFilterSelected,
                      child: CustomIconButton(
                        onTap: () => controller.showFilters(
                          context,
                        ),
                        hasDecoration: true,
                        icon: Icons.filter_alt_outlined,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
