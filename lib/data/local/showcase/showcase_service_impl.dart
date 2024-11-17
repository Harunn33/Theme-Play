part of 'showcase_service.dart';

abstract class IShowcaseService {
  void show(
    BuildContext context, {
    required List<GlobalKey<State<StatefulWidget>>> widgetIds,
    required List<ShowcaseItem> showcaseItems,
  });

  bool isShowcaseCompleted(BuildContext context);

  List<bool> isDone({
    required List<ShowcaseItem> showcaseItems,
  });
}
