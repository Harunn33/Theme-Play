import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum AppIcons {
  icNavbarHome("ic_nav_bar_home"),
  icNavbarAccount("ic_nav_bar_account"),
  icLanguage("ic_language"),
  icSignOut("ic_sign_out"),
  icSpray("ic_spray");

  final String value;
  const AppIcons(this.value);

  SvgPicture get svg => SvgPicture.asset(
        "assets/icons/$value.svg",
      );
}

extension AppIconsExt on AppIcons {
  SvgPicture svgWithAttiributes({
    required Color color,
    double? height,
  }) {
    return SvgPicture.asset(
      "assets/icons/$value.svg",
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      height: height,
    );
  }
}
