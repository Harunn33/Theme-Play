import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/data/models/popover/popover_model.dart';
import 'package:theme_play/data/models/theme/theme_model.dart';
import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/data/network/repository/themes/themes_repository.dart';
import 'package:theme_play/data/network/repository/user_themes/user_themes_repository.dart';
import 'package:theme_play/modules/nav_bar/helpers/nav_bar_helpers.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/enums/app_icons.dart';
import 'package:theme_play/shared/extensions/index.dart';
import 'package:theme_play/shared/extensions/show_popover_ext.dart';
import 'package:theme_play/shared/helpers/language_helpers.dart';
import 'package:theme_play/shared/widgets/index.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late CancelableOperation _searchOperation;
  final Duration _searchingDelay = 400.milliseconds;
  final ConstantsInstances constants = ConstantsInstances.instance;

  final NavBarHelpers navBarHelpers = NavBarHelpers.instance;

  late final Rx<Future<List<UserThemeModel>>> futureUserThemes =
      getUserThemes().obs;

  final TextEditingController searchController = TextEditingController();
  late final AnimationController animationController;
  final RxBool isSearchBarExpanded = false.obs;

  final RxString selectedFilterItem = "".obs;
  final RxInt filterBadgeCount = 0.obs;

  bool get isFilterSelected => filterBadgeCount.value > 0;

  late final Future<List<ThemeModel>> futureThemes = getThemes();

  @override
  void onInit() {
    super.onInit();
    _startSearchOperation();
    animationController = AnimationController(
      vsync: this,
      duration: 400.milliseconds,
    );
  }

  void _startSearchOperation() {
    _searchOperation = CancelableOperation.fromFuture(
      Future.delayed(_searchingDelay),
    );
  }

  void searchOnChanged(String value) {
    _searchOperation.cancel();
    _startSearchOperation();
    _searchOperation.value.whenComplete(() async {
      if (value.isEmpty) {
        futureUserThemes.value = getUserThemes();
        return;
      }
      futureUserThemes.value = searchUserThemes(value);
    });
  }

  void navigateToThemeScreen(UserThemeModel userTheme) {
    Get.toNamed(
      Routes.theme,
      arguments: {
        "model": userTheme,
      },
    );
  }

  void refreshPage() {
    futureUserThemes.value = getUserThemes();
    if (isSearchBarExpanded.value) toggleSearchBar();
  }

  void clearSearchBar() {
    if (searchController.text.isEmpty) return toggleSearchBar();
    searchController.clear();
    futureUserThemes.value = getUserThemes();
  }

  void toggleSearchBar() {
    isSearchBarExpanded.toggle();
    if (isSearchBarExpanded.value) {
      animationController.forward();
      return;
    }
    if (searchController.text.isNotEmpty) clearSearchBar();
    animationController.reverse();
  }

  void showThemeSettings(
    BuildContext context, {
    required final UserThemeModel userTheme,
  }) {
    context.showPopup(
      width: .45.sw,
      iconHeight: 18.h,
      children: [
        PopoverModel(
          icon: AppIcons.icEdit,
          title: constants.strings.editTheme.tr,
        ),
        PopoverModel(
          icon: AppIcons.icDelete,
          title: constants.strings.deleteTheme.tr,
          onTap: () {
            Get.back();
            context.showDialog(
              child: Padding(
                padding:
                    constants.paddings.horizontal + constants.paddings.vertical,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      constants.strings.deleteTheme.tr,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    16.verticalSpace,
                    Text(
                      constants.strings.deleteThemeDialogQuestion.tr,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    32.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomSecondaryButton(
                          text: constants.strings.no.tr,
                          bgColor: constants.colors.orochimaru,
                          borderRadius: 8,
                          textColor: constants.colors.black,
                          onTap: () => Get.back(),
                        ),
                        16.horizontalSpace,
                        CustomSecondaryButton(
                          text: constants.strings.yes.tr,
                          bgColor: constants.colors.powderBlue,
                          borderRadius: 8,
                          textColor: constants.colors.black,
                          onTap: () => deleteUserTheme(userTheme.id!),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  void clearFilters() {
    selectedFilterItem.value = constants.strings.allCreatedThemes.tr;
    if (filterBadgeCount.value == 0) return;
    filterBadgeCount.value = 0;
    futureUserThemes.value = getUserThemes();
  }

  Future<void> showFilters(BuildContext context) async {
    if (selectedFilterItem.value.isEmpty || filterBadgeCount.value == 0) {
      selectedFilterItem.value = constants.strings.allCreatedThemes.tr;
    }
    context.showBottomSheet(
      height: .5.sh,
      child: Padding(
        padding: constants.paddings.horizontal + constants.paddings.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                Expanded(
                  flex: 6,
                  child: Text(
                    constants.strings.filters.tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Expanded(
                  child: Bounceable(
                    onTap: Get.back,
                    child: Icon(
                      Icons.close,
                      color: constants.colors.black,
                    ),
                  ),
                ),
              ],
            ),
            32.verticalSpace,
            Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    constants.strings.filterByCategory.tr,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  8.verticalSpace,
                  CustomRadioMenuButton(
                    value: constants.strings.allCreatedThemes.tr,
                    groupValue: selectedFilterItem.value,
                    onChanged: (value) => clearFilters(),
                  ),
                  futureThemes.getData.toBuild(
                    onSuccess: (themeList) {
                      if (themeList == null) return const SizedBox.shrink();
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final theme = themeList[index];
                          return CustomRadioMenuButton(
                            value:
                                LanguageHelpers.instance.convertedCurrentLang(
                              texts: theme.type,
                            ),
                            groupValue: selectedFilterItem.value,
                            onChanged: (value) {
                              if (selectedFilterItem.value == value) return;
                              selectedFilterItem.value = value ?? "";
                              filterBadgeCount.value = 1;
                              futureUserThemes.value =
                                  filterUserThemes(theme.id);
                            },
                          );
                        },
                        itemCount: themeList.length,
                      );
                    },
                  ),
                  32.verticalSpace,
                  Obx(
                    () => AnimatedCrossFade(
                      firstChild: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomSecondaryButton(
                              onTap: clearFilters,
                              text: constants.strings.removeFilters.tr,
                              textColor: constants.colors.black,
                              bgColor: constants.colors.orochimaru,
                              borderRadius: 8,
                            ),
                          ),
                          16.horizontalSpace,
                          Expanded(
                            child: CustomSecondaryButton(
                              onTap: Get.back,
                              text: constants.strings.filterThemes.tr,
                              textColor: constants.colors.black,
                              bgColor: constants.colors.powderBlue,
                              borderRadius: 8,
                            ),
                          ),
                        ],
                      ),
                      secondChild: SizedBox(
                        width: 1.sw,
                        child: CustomSecondaryButton(
                          onTap: Get.back,
                          text: constants.strings.filterThemes.tr,
                          textColor: constants.colors.black,
                          bgColor: constants.colors.powderBlue,
                          borderRadius: 8,
                        ),
                      ),
                      crossFadeState: filterBadgeCount.value != 0
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: 300.milliseconds,
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

  Future<List<ThemeModel>> getThemes() async {
    final ThemesRepository themesRepository = ThemesRepository.instance;
    return await themesRepository.getThemes();
  }

  Future<List<UserThemeModel>> getUserThemes() async {
    final UserThemesRepository userThemesRepository =
        UserThemesRepository.instance;
    return await userThemesRepository.getUserThemes();
  }

  Future<List<UserThemeModel>> searchUserThemes(String query) async {
    final UserThemesRepository userThemesRepository =
        UserThemesRepository.instance;
    return await userThemesRepository.searchUserThemes(query: query);
  }

  Future<List<UserThemeModel>> filterUserThemes(String query) async {
    final UserThemesRepository userThemesRepository =
        UserThemesRepository.instance;
    return await userThemesRepository.filterUserThemes(query: query);
  }

  Future<void> deleteUserTheme(String themeId) async {
    final UserThemesRepository userThemesRepository =
        UserThemesRepository.instance;
    await userThemesRepository.deleteUserTheme(themeId: themeId);
    Get.back();
    refreshPage();
  }
}
