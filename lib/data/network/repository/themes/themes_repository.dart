import 'package:theme_play/data/models/theme/theme_model.dart';
import 'package:theme_play/data/network/repository/storage/storage_repository.dart';
import 'package:theme_play/data/network/services/supabase/index.dart';
import 'package:theme_play/shared/enums/index.dart';

part 'themes_repository_impl.dart';

final class ThemesRepository implements IThemesRepository {
  ThemesRepository._();

  static ThemesRepository instance = ThemesRepository._();

  final SupabaseService _supabaseService = SupabaseService.instance;

  @override
  Future<List<ThemeModel>> getThemes() async {
    final resp = await _supabaseService.fetchData(
      tableName: TableName.themes,
    );
    return resp.map((theme) => ThemeModel.fromJson(theme)).toList();
  }

  @override
  Future<String> getThemeIcon({
    required final String themeId,
  }) async {
    final StorageRepository storageRepository = StorageRepository.instance;
    final path = '$themeId/icon';

    String imageUrl = await storageRepository.getImages(
      path: path,
      bucketName: BucketName.themeIcons,
    );
    return imageUrl;
  }
}
