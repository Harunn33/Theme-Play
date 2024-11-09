import 'package:image_picker/image_picker.dart';
import 'package:theme_play/data/models/user_theme/user_theme_model.dart';
import 'package:theme_play/data/network/repository/profile/index.dart';
import 'package:theme_play/data/network/repository/storage/storage_repository.dart';
import 'package:theme_play/data/network/services/supabase/index.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/extensions/loading_dialog_ext.dart';

part 'user_themes_repository_impl.dart';

final class UserThemesRepository implements IUserThemesRepository {
  UserThemesRepository._();

  static UserThemesRepository instance = UserThemesRepository._();

  final SupabaseService _supabaseService = SupabaseService.instance;

  @override
  Future<List<UserThemeModel>> getUserThemes() async {
    final profileRepository = ProfileRepository.instance;
    final user = await profileRepository.getProfile();
    if (user == null) return [];
    final response = await _supabaseService.fetchDataWithFilter(
      tableName: TableName.userThemes,
      filterColumn: FilterByColumn.createdBy,
      filterValue: user.id,
    );
    return response.map((e) => UserThemeModel.fromJson(e)).toList();
  }

  @override
  Future<List<UserThemeModel>> getUserThemesByShareableCode({
    required final List<String> shareableCodes,
  }) async {
    final List<UserThemeModel> userThemes = <UserThemeModel>[];
    for (var code in shareableCodes) {
      final response = await _supabaseService.fetchDataWithFilter(
        tableName: TableName.userThemes,
        filterColumn: FilterByColumn.shareableCode,
        filterValue: code,
      );
      userThemes.addAll(
        response.map((e) => UserThemeModel.fromJson(e)).toList(),
      );
    }
    return userThemes;
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
  Future<void> editUserTheme({
    required final UserThemeModel userThemeModel,
  }) async {
    await _supabaseService.updateData(
      tableName: TableName.userThemes,
      data: userThemeModel.toJson(),
      filterColumn: FilterByColumn.id,
      value: userThemeModel.id ?? "",
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

  @override
  Future<List<String>> uploadUserThemeSliderImages({
    required final String themeId,
    required final List<XFile> images,
  }) async {
    final StorageRepository storageRepository = StorageRepository.instance;
    final ProfileRepository profileRepository = ProfileRepository.instance;
    LoadingStatus.loading.showLoadingDialog();
    final user = await profileRepository.getProfile();
    if (user == null) return [];

    final imageUrls = <String>[];
    for (var image in images) {
      if (!image.path.contains("https://")) {
        final path =
            '${user.id}/$themeId/slider_image_${images.indexOf(image) + 1}';
        final url = await storageRepository.uploadMultiImages(
          image: image,
          path: path,
          bucketName: BucketName.userThemesSliderImages,
        );
        imageUrls.add(url);
      }
    }

    LoadingStatus.loaded.showLoadingDialog();
    return imageUrls;
  }
}
