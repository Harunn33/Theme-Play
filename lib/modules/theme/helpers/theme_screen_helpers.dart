import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:theme_play/data/network/repository/notifications/notifications_repository.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/extensions/index.dart';
import 'package:theme_play/shared/widgets/buttons/custom_secondary_button.dart';

final class ThemeScreenHelpers {
  ThemeScreenHelpers._();

  static final ThemeScreenHelpers instance = ThemeScreenHelpers._();

  final _constants = ConstantsInstances.instance;

  void editThemeAccessControlDialog(
    BuildContext context, {
    required String createdBy,
    required String themeName,
  }) {
    context.showDialog(
      child: Padding(
        padding: _constants.paddings.horizontal + _constants.paddings.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _constants.strings.themeEditAccess.tr,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            16.verticalSpace,
            Text(
              _constants.strings.themeEditSharedAccessDialogQuestion.tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            32.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomSecondaryButton(
                  text: _constants.strings.no.tr,
                  bgColor: _constants.colors.orochimaru,
                  borderRadius: 8,
                  textColor: _constants.colors.black,
                  onTap: Get.back,
                ),
                16.horizontalSpace,
                CustomSecondaryButton(
                  text: _constants.strings.yes.tr,
                  bgColor: _constants.colors.powderBlue,
                  borderRadius: 8,
                  textColor: _constants.colors.black,
                  onTap: () => requestThemeEditAccess(
                    createdBy: createdBy,
                    themeName: themeName,
                  ).then(
                    (_) {
                      Get.back();
                      SnackbarType.success.show(
                        message: _constants.strings.requestedThemeEditAccess.tr,
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> requestThemeEditAccess({
    required String createdBy,
    required String themeName,
  }) async {
    final notificationsRepository = NotificationsRepository.instance;

    await notificationsRepository.sendThemeEditAccessRequestNotification(
      createdBy: createdBy,
      themeName: themeName,
    );
  }
}
