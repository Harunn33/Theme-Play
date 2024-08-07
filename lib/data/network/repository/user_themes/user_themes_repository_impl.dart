part of "user_themes_repository.dart";

abstract class IUserThemesRepository {
  Future<void> createUserTheme({
    required final String themeId,
    required final String name,
    required final UserThemeModel userThemeModel,
  });
}
