import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popover/popover.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:theme_play/data/local/showcase/showcase_service.dart';
import 'package:theme_play/data/models/popover/popover_model.dart';
import 'package:theme_play/shared/constants/colors.dart';
import 'package:theme_play/shared/enums/app_icons.dart';
import 'package:theme_play/shared/enums/showcase_item.dart';

extension ShowPopoverExt on BuildContext {
  static const AppColors _colors = AppColors.instance;

  void showPopup({
    required final double? width,
    final double? iconHeight,
    required final List<PopoverModel> children,
    final bool isShowcase = false,
    final List<ShowcaseItem> showcaseItems = const [],
  }) {
    BuildContext showcaseContext = this;
    showPopover(
      context: this,
      width: width,
      bodyBuilder: (context) => ShowCaseWidget(
        builder: (ctx) {
          showcaseContext = ctx;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: children
                .map(
                  (item) => isShowcase
                      ? Showcase(
                          key: item.showcaseKey ?? GlobalKey(),
                          description: item.showcaseDesc,
                          child: ListTile(
                            leading: item.icon.svgWithAttiributes(
                              color: _colors.powderBlue,
                              height: iconHeight ?? 24.h,
                            ),
                            horizontalTitleGap: 4.w,
                            title: Text(
                              item.title,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            onTap: item.onTap,
                          ),
                        )
                      : ListTile(
                          leading: item.icon.svgWithAttiributes(
                            color: _colors.powderBlue,
                            height: iconHeight ?? 24.h,
                          ),
                          horizontalTitleGap: 4.w,
                          title: Text(
                            item.title,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          onTap: item.onTap,
                        ),
                )
                .toList(),
          );
        },
      ),
    ).timeout(const Duration(milliseconds: 300), onTimeout: () {
      if (isShowcase) {
        final showcaseService = ShowcaseService.instance;
        showcaseService.show(
          showcaseContext,
          widgetIds: children.map((e) => e.showcaseKey ?? GlobalKey()).toList(),
          showcaseItems: showcaseItems,
        );
      }
      return null;
    });
  }
}
