import 'package:flutter/material.dart';

enum AppImages {
  splash("splash");

  final String value;
  const AppImages(this.value);

  Image get png => Image.asset(
        "assets/images/$value.png",
      );
}
