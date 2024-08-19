import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/modules/home/home_controller.dart';
import 'package:theme_play/shared/extensions/index.dart';
import 'package:theme_play/shared/widgets/app_bar/general_app_bar.dart';
import 'package:theme_play/shared/widgets/index.dart';
import 'package:theme_play/shared/widgets/search_bar/custom_animated_search_bar.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
        title: controller.constants.strings.appName,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
            child: OverflowBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Text(
                    controller.constants.strings.allCreatedThemes.tr,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                6.verticalSpace,
                Row(
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
              ],
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async => controller.refreshPage(),
              child: Padding(
                padding: controller.constants.paddings.horizontal,
                child: Obx(
                  () => controller.futureUserThemes.value.getData.toBuild(
                    onSuccess: (userThemeList) {
                      if (userThemeList == null) {
                        return const SizedBox.shrink();
                      }
                      return ListView.separated(
                        padding: controller.constants.paddings.vertical * 2,
                        itemBuilder: (_, index) {
                          final userTheme = userThemeList[index];
                          return ListTile(
                            contentPadding:
                                controller.constants.paddings.horizontal,
                            shape: RoundedRectangleBorder(
                              borderRadius: 8.radiusAll,
                            ),
                            onTap: () =>
                                controller.navigateToThemeScreen(userTheme),
                            tileColor: controller.constants.colors.hexToColor(
                              userTheme.style.bgColor,
                            ),
                            title: Text(
                              userTheme.name,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            trailing: Builder(
                              builder: (context) {
                                return Bounceable(
                                  onTap: () => controller.showThemeSettings(
                                    context,
                                    userTheme: userTheme,
                                  ),
                                  child: Icon(
                                    Icons.more_vert_outlined,
                                    color: controller.constants.colors.black,
                                  ),
                                );
                              },
                            ),
                          );
                        },
                        separatorBuilder: (_, __) => 12.verticalSpace,
                        itemCount: userThemeList.length,
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
