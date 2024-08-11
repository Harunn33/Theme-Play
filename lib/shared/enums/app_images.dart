import 'package:flutter/material.dart';

enum AppImages {
  appLogo("app_logo"),
  paintRoller("paint_roller");

  final String value;
  const AppImages(this.value);

  Image get png => Image.asset(
        "assets/images/$value.png",
      );
}

extension AppImagesExtension on AppImages {
  Image pngWithAttiributes({
    required Color color,
    double? height,
  }) {
    return Image.asset(
      "assets/images/$value.png",
      color: color,
      height: height,
    );
  }
}
