part of 'user_themes_repository.dart';

abstract class IUserThemesRepository {
  Future<List<UserThemeModel>> getUserThemes();
  Future<List<UserThemeModel>> getUserThemesByShareableCode({
    required List<String> shareableCodes,
  });
  Future<List<UserThemeModel>> searchUserThemes({
    required String query,
  });
  Future<List<UserThemeModel>> filterUserThemes({
    required String query,
  });
  Future<void> createUserTheme({
    required UserThemeModel userThemeModel,
  });

  Future<void> editUserTheme({
    required UserThemeModel userThemeModel,
  });

  Future<void> deleteUserTheme({
    required String themeId,
  });

  Future<List<String>> uploadUserThemeSliderImages({
    required String themeId,
    required List<XFile> images,
  });
}
