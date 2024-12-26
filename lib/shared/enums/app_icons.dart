import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum AppIcons {
  icNavbarHome('ic_nav_bar_home'),
  icNavbarAccount('ic_nav_bar_account'),
  icLanguage('ic_language'),
  icSignOut('ic_sign_out'),
  icEdit('ic_edit'),
  icDelete('ic_delete'),
  icDesign('ic_design'),
  icCopy('ic_copy'),
  icShare('ic_share'),
  icError('ic_error'),
  icAvatar('ic_avatar');

  const AppIcons(this.value);
  final String value;

  SvgPicture get svg => SvgPicture.asset(
        'assets/icons/$value.svg',
      );
}

extension AppIconsExt on AppIcons {
  SvgPicture svgWithAttiributes({
    required Color color,
    double? height,
  }) {
    return SvgPicture.asset(
      'assets/icons/$value.svg',
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      height: height,
    );
  }
}
