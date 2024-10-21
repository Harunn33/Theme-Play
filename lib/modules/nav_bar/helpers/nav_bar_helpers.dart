import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/data/models/popover/popover_model.dart';
import 'package:theme_play/data/network/repository/shared_codes_to_user/shared_codes_to_user_repository.dart';
import 'package:theme_play/modules/account/account_screen.dart';
import 'package:theme_play/modules/home/home_controller.dart';
import 'package:theme_play/modules/home/home_screen.dart';
import 'package:theme_play/modules/nav_bar/enums/nav_bar_pages.dart';
import 'package:theme_play/modules/nav_bar/extensions/nav_bar_ext.dart';
import 'package:theme_play/modules/nav_bar/nav_bar_controller.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/extensions/index.dart';
import 'package:theme_play/shared/extensions/show_popover_ext.dart';
import 'package:theme_play/shared/mixins/validators.dart';
import 'package:theme_play/shared/widgets/index.dart';

final class NavBarHelpers with ValidatorsMixin {
  NavBarHelpers._();

  static final NavBarHelpers instance = NavBarHelpers._();

  final enterThemeCodeController = TextEditingController();
  final GlobalKey<FormState> addSharedCodesFormKey = GlobalKey<FormState>();

  final List<Widget> screens = [
    const HomeScreen(),
    const AccountScreen(),
  ];
  final ConstantsInstances constants = ConstantsInstances.instance;
  void onTapFAB(BuildContext context) {
    context.showPopup(
      width: .6.sw,
      children: [
        PopoverModel(
          icon: AppIcons.icDesign,
          title: constants.strings.designYourPage.tr,
          onTap: () {
            Get.back();
            Get.toNamed(Routes.creator);
          },
        ),
        PopoverModel(
          icon: AppIcons.icDesign,
          title: constants.strings.enterThemeCode.tr,
          onTap: () {
            Get.back();
            enterThemeCodeController.clear();
            context.showBottomSheet(
              child: Padding(
                padding:
                    constants.paddings.horizontal + constants.paddings.vertical,
                child: Form(
                  key: addSharedCodesFormKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextFormField(
                        maxLength: 11,
                        textCapitalization: TextCapitalization.characters,
                        textEditingController: enterThemeCodeController,
                        labelText: constants.strings.enterThemeCode.tr,
                        validator: enterThemeCodeValidator,
                      ),
                      24.verticalSpace,
                      CustomPrimaryButton(
                        text: constants.strings.save.tr,
                        onTap: () => addSharedCodes(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Future<void> addSharedCodes() async {
    if (!addSharedCodesFormKey.currentState!.validate()) return;
    final HomeController homeController = Get.find<HomeController>();
    final SharedCodesToUserRepository sharedCodesToUserRepository =
        SharedCodesToUserRepository.instance;
    final myUserThemes = await homeController.getUserThemes();
    final hasContainsMyUserTheme = myUserThemes
        .map((userTheme) =>
            userTheme.shareableCode == enterThemeCodeController.text)
        .toList();
    if (hasContainsMyUserTheme.contains(true)) {
      return SnackbarType.error.show(
        message: constants.strings.youCantShareYourOwnTheme.tr,
      );
    }
    await sharedCodesToUserRepository.addSharedCodes(
      shareableCode: enterThemeCodeController.text,
    );
    Get.back();
    final NavBarController navBarController = Get.find<NavBarController>();
    homeController.refreshSharedThemesTab();
    SnackbarType.success.show(
      message: constants.strings.themeCreated.tr,
    );
    navBarController.onTapNavBarItem(0);
    homeController.tabController.animateTo(1);
  }

  BottomNavigationBarItem build({required NavBarPages type}) {
    return BottomNavigationBarItem(
      activeIcon: type.icon,
      icon: type.inActiveIcon,
      label: type.title,
    );
  }
}
