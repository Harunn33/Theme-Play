part of "showcase_service.dart";

abstract class IShowcaseService {
  void show(
    BuildContext context, {
    required final List<GlobalKey<State<StatefulWidget>>> widgetIds,
    required final List<ShowcaseItem> showcaseItems,
  });

  bool isShowcaseCompleted(BuildContext context);

  List<bool> isDone({
    required final List<ShowcaseItem> showcaseItems,
  });
}
