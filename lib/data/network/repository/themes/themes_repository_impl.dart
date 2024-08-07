part of "themes_repository.dart";

abstract class IThemesRepository {
  Future<List<ThemeModel>> getThemes();
  Future<String> getThemeIcon({
    required final String themeId,
  });
}
