import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/data/network/services/supabase_service.dart';
import 'package:theme_play/shared/enums/index.dart';

part 'user_themes_repository_impl.dart';

final class UserThemesRepository implements IUserThemesRepository {
  UserThemesRepository._();

  static UserThemesRepository instance = UserThemesRepository._();

  final SupabaseService _supabaseService = SupabaseService.instance;

  @override
  Future<List<UserThemeModel>> getUserThemes() async {
    final response = await _supabaseService.fetchData(
      tableName: TableName.userThemes,
    );
    return response.map((e) => UserThemeModel.fromJson(e)).toList();
  }

  @override
  Future<List<UserThemeModel>> searchUserThemes({
    required final String query,
  }) async {
    final response = await _supabaseService.fetchDataWithSearch(
      tableName: TableName.userThemes,
      searchColumn: FilterByColumn.name,
      searchValue: query,
    );
    return response.map((e) => UserThemeModel.fromJson(e)).toList();
  }

  @override
  Future<List<UserThemeModel>> filterUserThemes({
    required final String query,
  }) async {
    final response = await _supabaseService.fetchDataWithFilter(
      tableName: TableName.userThemes,
      filterColumn: FilterByColumn.themeId,
      filterValue: query,
    );
    return response.map((e) => UserThemeModel.fromJson(e)).toList();
  }

  @override
  Future<void> createUserTheme({
    required final UserThemeModel userThemeModel,
  }) async {
    await _supabaseService.insertData(
      tableName: TableName.userThemes,
      data: userThemeModel.toJson(),
    );
  }

  @override
  Future<void> deleteUserTheme({
    required final String themeId,
  }) async {
    await _supabaseService.deleteData(
      tableName: TableName.userThemes,
      column: FilterByColumn.id,
      value: themeId,
    );
  }
}
