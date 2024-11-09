import 'dart:async';
import 'dart:convert';
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/data/local/index.dart';
import 'package:theme_play/data/models/index.dart';
import 'package:theme_play/data/network/repository/profile/profile_repository.dart';
import 'package:theme_play/data/network/repository/shared_codes_to_user/index.dart';
import 'package:theme_play/data/network/repository/themes/themes_repository.dart';
import 'package:theme_play/data/network/repository/user_themes/user_themes_repository.dart';
import 'package:theme_play/modules/nav_bar/helpers/nav_bar_helpers.dart';
import 'package:theme_play/modules/theme/helpers/theme_screen_helpers.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/extensions/index.dart';
import 'package:theme_play/shared/helpers/language_helpers.dart';
import 'package:theme_play/shared/widgets/index.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  late CancelableOperation _searchOperation;
  final Duration _searchingDelay = 400.milliseconds;
  final ConstantsInstances constants = ConstantsInstances.instance;

  late final TabController tabController;

  final NavBarHelpers navBarHelpers = NavBarHelpers.instance;

  late final Rx<Future<List<UserThemeModel>>> futureUserThemes =
      getUserThemes().obs;

  late final Rx<Future<List<UserThemeModel>>> futureSharedUserThemes =
      getSharedUserThemes().obs;

  final TextEditingController searchController = TextEditingController();
  late final AnimationController animationController;
  final RxBool isSearchBarExpanded = false.obs;

  final RxString selectedFilterItem = "".obs;
  final RxInt filterBadgeCount = 0.obs;
  final RxInt selectedTabIndex = 0.obs;

  bool get isFilterSelected => filterBadgeCount.value > 0;

  late final Future<List<ThemeModel>> futureThemes;

  BuildContext showcaseHeaderContext = Get.context!;
  BuildContext showcaseTabContext = Get.context!;
  final GlobalKey searchBarShowcaseKey = GlobalKey();
  final GlobalKey filterButtonShowcaseKey = GlobalKey();
  final GlobalKey myThemeShowcaseKey = GlobalKey();
  final GlobalKey themeSharedWithMeShowcaseKey = GlobalKey();
  final GlobalKey shareThemeCodeShowcaseKey = GlobalKey();
  final GlobalKey editThemeShowcaseKey = GlobalKey();
  final GlobalKey deleteThemeShowcaseKey = GlobalKey();

  final userIdTextEditingController = TextEditingController();
  final GlobalKey<FormState> shareThemeFormKey = GlobalKey<FormState>();
  final RxBool isEditAccess = false.obs;

  final RxList<bool> hasEditAccessList = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();
    futureThemes = getThemes();
    _startSearchOperation();
    animationController = AnimationController(
      vsync: this,
      duration: 400.milliseconds,
    );
    tabController = TabController(
      length: 2,
      vsync: this,
    );
    tabController.addListener(() {
      selectedTabIndex.value = tabController.index;
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    animationController.dispose();
    searchController.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
    initializeShowcase();
  }

  void initializeShowcase() {
    final showcaseService = ShowcaseService.instance;
    showcaseService.show(
      showcaseHeaderContext,
      widgetIds: [
        searchBarShowcaseKey,
        filterButtonShowcaseKey,
      ],
      showcaseItems: [
        ShowcaseItem.homeSearchBar,
        ShowcaseItem.homeFilterButton,
      ],
    );
    Timer.periodic(
      300.milliseconds,
      (timer) {
        final isCompletedHeaderShowcase =
            showcaseService.isShowcaseCompleted(showcaseHeaderContext);
        if (isCompletedHeaderShowcase) {
          showcaseService.show(
            showcaseTabContext,
            widgetIds: [
              myThemeShowcaseKey,
              themeSharedWithMeShowcaseKey,
            ],
            showcaseItems: [
              ShowcaseItem.homeMyThemesTab,
              ShowcaseItem.homeSharedThemesTab,
            ],
          );
          timer.cancel();
        }
      },
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

  void navigateToThemeScreen({
    required final UserThemeModel userTheme,
    required final bool hasEditAccess,
  }) {
    Get.toNamed(
      Routes.theme,
      arguments: {
        "model": userTheme.obs,
        "has_edit_access": hasEditAccess,
      },
    );
  }

  void _navigateToEditThemeScreen(
    BuildContext context, {
    required final UserThemeModel userTheme,
    required final bool hasEditAccess,
  }) {
    Get.back();
    if (!hasEditAccess) {
      return ThemeScreenHelpers.instance.editThemeAccessControlDialog(context);
    }
    Get.toNamed(
      Routes.editTheme,
      arguments: {
        "model": userTheme.obs,
      },
    );
  }

  void refreshMyThemesTab() {
    futureUserThemes.value = getUserThemes();
    if (isSearchBarExpanded.value) toggleSearchBar();
    filterBadgeCount.value = 0;
    selectedFilterItem.value = constants.strings.allCreatedThemes.tr;
  }

  void refreshSharedThemesTab() {
    futureSharedUserThemes.value = getSharedUserThemes();
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
    final bool hasEditAccess = false,
    final bool hasShareTheme = false,
  }) {
    context.showPopup(
      width: .45.sw,
      iconHeight: 18.h,
      isShowcase: true,
      showcaseItems: [
        ShowcaseItem.homeShareThemeCode,
        ShowcaseItem.homeEditThemeButton,
        ShowcaseItem.homeDeleteThemeButton,
      ],
      children: [
        if (hasShareTheme)
          PopoverModel(
            onTap: () => shareTheme(
              context,
              shareableCode: userTheme.shareableCode,
            ),
            icon: AppIcons.icShare,
            title: constants.strings.shareTheme.tr,
            showcaseDesc: constants.strings.homeShowcaseShareThemeMessage.tr,
            showcaseKey: shareThemeCodeShowcaseKey,
          ),
        PopoverModel(
          onTap: () => _navigateToEditThemeScreen(
            context,
            userTheme: userTheme,
            hasEditAccess: hasEditAccess,
          ),
          icon: AppIcons.icEdit,
          title: constants.strings.editTheme.tr,
          showcaseDesc: constants.strings.homeShowcaseEditThemeMessage.tr,
          showcaseKey: editThemeShowcaseKey,
        ),
        PopoverModel(
          icon: AppIcons.icDelete,
          title: constants.strings.deleteTheme.tr,
          showcaseDesc: constants.strings.homeShowcaseDeleteThemeMessage.tr,
          showcaseKey: deleteThemeShowcaseKey,
          onTap: () => onTapDeleteTheme(
            context,
            userTheme: userTheme,
          ),
        ),
      ],
    );
  }

  void shareTheme(
    BuildContext context, {
    required final String shareableCode,
  }) {
    Get.back();
    userIdTextEditingController.clear();
    isEditAccess.value = false;
    context.showBottomSheet(
      child: Padding(
        padding: constants.paddings.horizontal + constants.paddings.vertical,
        child: Form(
          key: shareThemeFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextFormField(
                textCapitalization: TextCapitalization.characters,
                textEditingController: userIdTextEditingController,
                labelText: constants.strings.enterUserId.tr,
                validator: (value) {
                  if (value == null) return null;
                  if (value.isEmpty) {
                    return constants.strings.fieldIsRequired.tr;
                  }
                  return null;
                },
              ),
              12.verticalSpace,
              Row(
                children: [
                  Obx(
                    () => Switch(
                      inactiveTrackColor: constants.colors.white,
                      activeTrackColor: constants.colors.success,
                      inactiveThumbColor: constants.colors.black,
                      thumbColor: WidgetStateProperty.resolveWith(
                        (states) => states.contains(WidgetState.selected)
                            ? constants.colors.white
                            : constants.colors.black,
                      ),
                      trackOutlineColor: WidgetStateProperty.resolveWith(
                        (states) => states.contains(WidgetState.selected)
                            ? constants.colors.success
                            : constants.colors.black,
                      ),
                      value: isEditAccess.value,
                      onChanged: (value) => isEditAccess.toggle(),
                    ),
                  ),
                  8.horizontalSpace,
                  Text(
                    constants.strings.allowEditAccess.tr,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              12.verticalSpace,
              CustomPrimaryButton(
                text: constants.strings.save.tr,
                onTap: () => addSharedCodes(
                  shareableCode: shareableCode,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _decodeUserID(String encodedUuid) {
    final bytes = base64Decode(encodedUuid); // Encode edilmiş veriyi decode et
    return utf8.decode(bytes); // Orijinal UUID stringini elde et
  }

  Future<void> addSharedCodes({
    required final String shareableCode,
  }) async {
    if (!shareThemeFormKey.currentState!.validate()) return;
    final decodedUID = _decodeUserID(userIdTextEditingController.text.trim());
    final HomeController homeController = Get.find<HomeController>();
    final SharedCodesToUserRepository sharedCodesToUserRepository =
        SharedCodesToUserRepository.instance;
    final myUserThemes = await homeController.getUserThemes();
    final hasContainsMyUserTheme = myUserThemes
        .map((userTheme) => userTheme.createdBy == decodedUID)
        .toList();
    if (hasContainsMyUserTheme.contains(true)) {
      return SnackbarType.error.show(
        message: constants.strings.youCantShareYourOwnTheme.tr,
      );
    }
    await sharedCodesToUserRepository.addSharedCodes(
      sharedUser: decodedUID,
      themeEditAccess: isEditAccess.value,
      shareableCode: shareableCode,
    );
    Get.back();
    SnackbarType.success.show(
      message: constants.strings.themeShared.tr,
    );
  }

  void onTapDeleteTheme(
    BuildContext context, {
    required final UserThemeModel userTheme,
  }) {
    Get.back();
    context.showDialog(
      child: Padding(
        padding: constants.paddings.horizontal + constants.paddings.vertical,
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
                  onTap: () => deleteUserTheme(
                    themeId: userTheme.id ?? "",
                    shareableCode: userTheme.shareableCode,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
                              futureUserThemes.value = filterUserThemes(
                                theme.id,
                              );
                            },
                          );
                        },
                        itemCount: themeList.length,
                      );
                    },
                  ),
                  32.verticalSpace,
                  Obx(
                    () => filterBadgeCount.value == 0
                        ? const SizedBox.shrink()
                        : AnimatedSlide(
                            offset: const Offset(0, 0),
                            duration: 3.seconds,
                            child: SizedBox(
                              width: 1.sw,
                              child: CustomSecondaryButton(
                                onTap: clearFilters,
                                text: constants.strings.removeFilters.tr,
                                textColor: constants.colors.black,
                                bgColor: constants.colors.orochimaru,
                                borderRadius: 8,
                              ),
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

  Future<List<ThemeModel>> getThemes() async {
    final ThemesRepository themesRepository = ThemesRepository.instance;
    return await themesRepository.getThemes();
  }

  Future<List<UserThemeModel>> getUserThemes() async {
    final UserThemesRepository userThemesRepository =
        UserThemesRepository.instance;
    return await userThemesRepository.getUserThemes();
  }

  Future<List<UserThemeModel>> getSharedUserThemes() async {
    final UserThemesRepository userThemesRepository =
        UserThemesRepository.instance;
    final sharedCodesToUserModel = await getSharedCodesToUsers();
    if (sharedCodesToUserModel == null) return [];
    final List<String> sharedCodes = sharedCodesToUserModel
        .map((sharedCodesToUser) => sharedCodesToUser.themeShareCode)
        .toList();
    hasEditAccessList.value = sharedCodesToUserModel
        .map((sharedCodesToUser) => sharedCodesToUser.themeEditAccess)
        .toList();
    final userThemes = await userThemesRepository.getUserThemesByShareableCode(
      shareableCodes: sharedCodes,
    );
    return userThemes;
  }

  Future<List<UserThemeModel>> searchUserThemes(String query) async {
    final UserThemesRepository userThemesRepository =
        UserThemesRepository.instance;
    clearFilters();
    return await userThemesRepository.searchUserThemes(query: query);
  }

  Future<List<UserThemeModel>> filterUserThemes(String query) async {
    final UserThemesRepository userThemesRepository =
        UserThemesRepository.instance;
    return await userThemesRepository.filterUserThemes(query: query);
  }

  Future<void> deleteUserTheme({
    final String themeId = "",
    final String shareableCode = "",
  }) async {
    final profileRepository = ProfileRepository.instance;
    final user = await profileRepository.getProfile();
    if (user == null) return;
    if (tabController.index == 1) {
      return _deleteSharedThemeForMe(
        shareableCode: shareableCode,
        sharedUser: user.id,
      );
    }
    final userThemesRepository = UserThemesRepository.instance;
    final sharedCodesToUserRepository = SharedCodesToUserRepository.instance;
    LoadingStatus.loading.showLoadingDialog();
    await userThemesRepository.deleteUserTheme(themeId: themeId);
    await sharedCodesToUserRepository.removeSharedCodes(
      shareableCode: shareableCode,
      filterByColumn: FilterByColumn.sharingUser,
      userId: user.id,
    );
    Get.back();
    refreshMyThemesTab();
    refreshSharedThemesTab();
    LoadingStatus.loaded.showLoadingDialog();
  }

  Future<void> _deleteSharedThemeForMe({
    required final String shareableCode,
    required final String sharedUser,
  }) async {
    final sharedCodesToUserRepository = SharedCodesToUserRepository.instance;
    LoadingStatus.loading.showLoadingDialog();
    await sharedCodesToUserRepository.removeSharedCodes(
      shareableCode: shareableCode,
      userId: sharedUser,
    );
    Get.back();
    refreshSharedThemesTab();
    LoadingStatus.loaded.showLoadingDialog();
  }

  Future<List<SharedCodesToUserModel>?> getSharedCodesToUsers() async {
    final sharedCodesToUserRepository = SharedCodesToUserRepository.instance;
    final profileRepository = ProfileRepository.instance;
    final user = await profileRepository.getProfile();
    if (user == null) return null;
    return await sharedCodesToUserRepository.getSharedCodesToUsers(
      userId: user.id,
    );
  }
}
