import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:theme_play/data/local/local_storage/local_storage_service.dart';
import 'package:theme_play/shared/enums/showcase_item.dart';

part 'showcase_service_impl.dart';

final class ShowcaseService implements IShowcaseService {
  ShowcaseService._();

  static ShowcaseService instance = ShowcaseService._();

  @override
  void show(
    BuildContext context, {
    required List<GlobalKey<State<StatefulWidget>>> widgetIds,
    required List<ShowcaseItem> showcaseItems,
  }) {
    final hasShownBefore = isDone(
      showcaseItems: showcaseItems,
    );
    if (hasShownBefore.every((element) => element)) {
      return;
    }
    final localWidgetIds = <GlobalKey<State<StatefulWidget>>>[];
    final localShowcaseItems = <ShowcaseItem>[];
    for (var i = 0; i < hasShownBefore.length; i++) {
      if (!hasShownBefore[i]) {
        localWidgetIds.add(widgetIds[i]);
        localShowcaseItems.add(showcaseItems[i]);
      }
    }
    ShowCaseWidget.of(context).startShowCase(localWidgetIds);
    _saveShowcase(showcaseItems: localShowcaseItems);
  }

  @override
  bool isShowcaseCompleted(BuildContext context) {
    return ShowCaseWidget.of(context).isShowCaseCompleted;
  }

  @override
  List<bool> isDone({
    required List<ShowcaseItem> showcaseItems,
  }) {
    final localStorageService = LocalStorageService.instance;
    final hasShownBeforeList = <bool>[];
    for (final showcaseItem in showcaseItems) {
      if (localStorageService.retrieveData(showcaseItem.name) ?? false) {
        hasShownBeforeList.add(true);
      } else {
        hasShownBeforeList.add(false);
      }
    }
    return hasShownBeforeList;
  }

  void _saveShowcase({
    required List<ShowcaseItem> showcaseItems,
  }) {
    final localStorageService = LocalStorageService.instance;
    for (final showcaseItem in showcaseItems) {
      localStorageService.saveData(showcaseItem.name, true);
    }
  }
}
