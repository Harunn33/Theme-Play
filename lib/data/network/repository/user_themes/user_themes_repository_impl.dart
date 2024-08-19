part of "user_themes_repository.dart";

abstract class IUserThemesRepository {
  Future<List<UserThemeModel>> getUserThemes();
  Future<List<UserThemeModel>> searchUserThemes({
    required final String query,
  });
  Future<List<UserThemeModel>> filterUserThemes({
    required final String query,
  });
  Future<void> createUserTheme({
    required final UserThemeModel userThemeModel,
  });

  Future<void> deleteUserTheme({
    required final String themeId,
  });
}
