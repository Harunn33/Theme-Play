import 'package:flutter/material.dart';
import 'package:theme_play/shared/enums/app_icons.dart';

final class PopoverModel {
  PopoverModel({
    required this.icon,
    required this.title,
    this.showcaseDesc,
    this.showcaseKey,
    this.onTap,
  });
  final AppIcons icon;
  final String title;
  final String? showcaseDesc;
  final GlobalKey? showcaseKey;
  final VoidCallback? onTap;
}
