import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/shared/constants/index.dart';
import 'package:theme_play/shared/extensions/index.dart';

extension SnackbarExt on SnackbarType {
  void show({
    required String message,
  }) {
    Get.snackbar(
      title.tr,
      message,
      icon: icon,
      backgroundColor: color,
      colorText: ConstantsInstances.instance.colors.white,
      margin: 8.padHorizontal + 2.padBottom,
      padding: 16.padAll,
      snackPosition: SnackPosition.BOTTOM,
      snackStyle: SnackStyle.FLOATING,
      animationDuration: Duration.zero,
      duration: 3.seconds,
    );
  }
}

enum SnackbarType {
  error,
  success,
  info,
}

extension on SnackbarType {
  static final _constantsInstances = ConstantsInstances.instance;
  Color get color {
    switch (this) {
      case SnackbarType.error:
        return _constantsInstances.colors.error;
      case SnackbarType.success:
        return _constantsInstances.colors.success;
      case SnackbarType.info:
        return _constantsInstances.colors.info;
    }
  }

  Icon get icon {
    switch (this) {
      case SnackbarType.error:
        return Icon(
          Icons.warning,
          color: _constantsInstances.colors.white,
        );
      case SnackbarType.success:
        return Icon(
          Icons.check_circle,
          color: _constantsInstances.colors.white,
        );
      case SnackbarType.info:
        return Icon(
          Icons.info,
          color: _constantsInstances.colors.white,
        );
    }
  }

  String get title {
    switch (this) {
      case SnackbarType.error:
        return _constantsInstances.strings.error;
      case SnackbarType.success:
        return _constantsInstances.strings.success;
      case SnackbarType.info:
        return _constantsInstances.strings.info;
    }
  }
}
