part of "user_themes_repository.dart";

abstract class IUserThemesRepository {
  Future<List<UserThemeModel>> getUserThemes();
  Future<List<UserThemeModel>> searchUserThemes({
    required final String query,
  });
  Future<void> createUserTheme({
    required final String themeId,
    required final String name,
    required final UserThemeModel userThemeModel,
  });
}
