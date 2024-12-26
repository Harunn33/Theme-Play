import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/data/models/index.dart';
import 'package:theme_play/data/models/shared_codes_to_user/req/edit_access_model.dart';
import 'package:theme_play/data/network/repository/profile/profile_repository.dart';
import 'package:theme_play/data/network/services/supabase/index.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/extensions/loading_dialog_ext.dart';
import 'package:theme_play/shared/extensions/snackbar_ext.dart';

part 'shared_codes_to_user_repository_impl.dart';

final class SharedCodesToUserRepository
    implements ISharedCodesToUserRepository {
  SharedCodesToUserRepository._();

  static SharedCodesToUserRepository instance = SharedCodesToUserRepository._();

  final SupabaseService _supabaseService = SupabaseService.instance;

  @override
  Future<void> addSharedCodes({
    required String shareableCode,
    required String sharedUser,
    required bool themeEditAccess,
  }) async {
    LoadingStatus.loading.showLoadingDialog();
    final profileRepository = ProfileRepository.instance;
    final user = await profileRepository.getProfile();
    if (user == null) return LoadingStatus.loaded.showLoadingDialog();
    final sharedCodesToUsers = await getSharedCodesToUsers(
      userId: sharedUser,
    );
    final hasAlreadyShared = sharedCodesToUsers?.any(
      (element) => element.themeShareCode == shareableCode,
    );

    if (hasAlreadyShared == null || !hasAlreadyShared) {
      final sharedCodesToUserModel = SharedCodesToUserModel(
        createdAt: DateTime.now().toIso8601String(),
        sharingUser: user.id,
        sharedUser: sharedUser,
        themeEditAccess: themeEditAccess,
        themeShareCode: shareableCode,
      );
      await _supabaseService.insertData(
        tableName: TableName.sharedCodesToUser,
        data: sharedCodesToUserModel.toJson(),
      );
      LoadingStatus.loaded.showLoadingDialog();
      return;
    }
    try {
      final baseResp = await _supabaseService.baseFetchData(
        tableName: TableName.sharedCodesToUser,
      );
      await baseResp
          .update(
            EditAccessModel(themeEditAccess: themeEditAccess).toJson(),
          )
          .eq(
            FilterByColumn.sharedUser.value,
            sharedUser,
          )
          .eq(
            FilterByColumn.themeShareCode.value,
            shareableCode,
          );
    } on PostgrestException catch (e) {
      SnackbarType.error.show(message: e.details.toString());
      rethrow;
    }
    LoadingStatus.loaded.showLoadingDialog();
  }

  @override
  Future<List<SharedCodesToUserModel>?> getSharedCodesToUsers({
    required String userId,
  }) async {
    final response = await _supabaseService.fetchDataWithFilter(
      tableName: TableName.sharedCodesToUser,
      filterColumn: FilterByColumn.sharedUser,
      filterValue: userId,
    );
    if (response.isEmpty) return null;
    return response.map(SharedCodesToUserModel.fromJson).toList();
  }

  @override
  Future<void> removeSharedCodes({
    required String shareableCode,
    required String userId,
    FilterByColumn filterByColumn = FilterByColumn.sharedUser,
  }) async {
    LoadingStatus.loading.showLoadingDialog();
    final baseResp = await _supabaseService.baseFetchData(
      tableName: TableName.sharedCodesToUser,
    );
    await baseResp
        .delete()
        .eq(
          filterByColumn.value,
          userId,
        )
        .eq(
          FilterByColumn.themeShareCode.value,
          shareableCode,
        );
    LoadingStatus.loaded.showLoadingDialog();
  }

  @override
  Future<void> updateEditAccess({
    required String sharingUser,
    required String themeShareCode,
    required bool themeEditAccess,
  }) async {
    LoadingStatus.loading.showLoadingDialog();
    final editAccessModel = EditAccessModel(
      themeEditAccess: themeEditAccess,
    );
    final baseResp = await _supabaseService.baseFetchData(
      tableName: TableName.sharedCodesToUser,
    );

    await baseResp
        .update(editAccessModel.toJson())
        .eq(
          FilterByColumn.sharingUser.value,
          sharingUser,
        )
        .eq(
          FilterByColumn.themeShareCode.value,
          themeShareCode,
        );
    LoadingStatus.loaded.showLoadingDialog();
  }
}
