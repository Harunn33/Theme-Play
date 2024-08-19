import 'package:flutter/material.dart';
import 'package:theme_play/shared/enums/app_icons.dart';

final class PopoverModel {
  final AppIcons icon;
  final String title;
  final VoidCallback? onTap;

  PopoverModel({
    required this.icon,
    required this.title,
    this.onTap,
  });
}
