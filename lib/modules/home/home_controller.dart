import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/data/network/repository/user_themes/user_themes_repository.dart';
import 'package:theme_play/modules/nav_bar/helpers/nav_bar_helpers.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/constants/index.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late CancelableOperation _searchOperation;
  final Duration _searchingDelay = 400.milliseconds;
  final ConstantsInstances constants = ConstantsInstances.instance;

  final NavBarHelpers navBarHelpers = NavBarHelpers.instance;

  late final Rx<Future<List<UserThemeModel>>> futureUserThemes =
      getUserThemes().obs;

  final TextEditingController searchController = TextEditingController();
  late final AnimationController animationController;
  final RxBool isSearchBarExpanded = false.obs;

  @override
  void onInit() {
    super.onInit();
    _startSearchOperation();
    animationController = AnimationController(
      vsync: this,
      duration: 400.milliseconds,
    );
  }

  void _startSearchOperation() {
    _searchOperation = CancelableOperation.fromFuture(
      Future.delayed(_searchingDelay),
    );
  }

  void searchOnChanged(String value) {
    _searchOperation.cancel();
    _startSearchOperation();
    _searchOperation.value.whenComplete(() async {
      if (value.isEmpty) {
        futureUserThemes.value = getUserThemes();
        return;
      }
      futureUserThemes.value = searchUserThemes(value);
    });
  }

  Future<List<UserThemeModel>> getUserThemes() async {
    final UserThemesRepository userThemesRepository =
        UserThemesRepository.instance;
    return await userThemesRepository.getUserThemes();
  }

  void navigateToThemeScreen(UserThemeModel userTheme) {
    Get.toNamed(
      Routes.theme,
      arguments: {
        "model": userTheme,
      },
    );
  }

  void refreshPage() {
    futureUserThemes.value = getUserThemes();
    if (isSearchBarExpanded.value) toggleSearchBar();
  }

  Future<List<UserThemeModel>> searchUserThemes(String query) async {
    final UserThemesRepository userThemesRepository =
        UserThemesRepository.instance;
    return await userThemesRepository.searchUserThemes(query: query);
  }

  void clearSearchBar() {
    if (searchController.text.isEmpty) return toggleSearchBar();
    searchController.clear();
    futureUserThemes.value = getUserThemes();
  }

  void toggleSearchBar() {
    isSearchBarExpanded.toggle();
    if (isSearchBarExpanded.value) {
      animationController.forward();
      return;
    }
    if (searchController.text.isNotEmpty) clearSearchBar();
    animationController.reverse();
  }
}
