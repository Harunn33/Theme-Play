import 'package:flutter/material.dart';

enum AppImages {
  appLogo("app_logo");

  final String value;
  const AppImages(this.value);

  Image get png => Image.asset(
        "assets/images/$value.png",
      );
}
