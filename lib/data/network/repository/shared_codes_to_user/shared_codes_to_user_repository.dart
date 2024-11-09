import 'package:theme_play/data/models/index.dart';
import 'package:theme_play/data/network/repository/profile/profile_repository.dart';
import 'package:theme_play/data/network/services/supabase/index.dart';
import 'package:theme_play/shared/enums/filter_by_column.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/extensions/loading_dialog_ext.dart';

part 'shared_codes_to_user_repository_impl.dart';

final class SharedCodesToUserRepository
    implements ISharedCodesToUserRepository {
  SharedCodesToUserRepository._();

  static SharedCodesToUserRepository instance = SharedCodesToUserRepository._();

  final SupabaseService _supabaseService = SupabaseService.instance;

  @override
  Future<void> addSharedCodes({
    required final String shareableCode,
    required final String sharedUser,
    required final bool themeEditAccess,
  }) async {
    LoadingStatus.loading.showLoadingDialog();
    final ProfileRepository profileRepository = ProfileRepository.instance;
    final user = await profileRepository.getProfile();
    if (user == null) return LoadingStatus.loaded.showLoadingDialog();
    final sharedCodesToUsers = await getSharedCodesToUsers(
      userId: sharedUser,
    );
    final hasAlreadyShared = sharedCodesToUsers?.any(
      (element) => element.themeShareCode == shareableCode,
    );

    if (hasAlreadyShared == null || !hasAlreadyShared) {
      final SharedCodesToUserModel sharedCodesToUserModel =
          SharedCodesToUserModel(
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
    final baseResp = await _supabaseService.baseFetchData(
      tableName: TableName.sharedCodesToUser,
    );
    await baseResp
        .update({
          "theme_edit_access": themeEditAccess,
        })
        .eq(
          FilterByColumn.sharedUser.value,
          sharedUser,
        )
        .eq(
          FilterByColumn.themeShareCode.value,
          shareableCode,
        );
    LoadingStatus.loaded.showLoadingDialog();
  }

  @override
  Future<List<SharedCodesToUserModel>?> getSharedCodesToUsers({
    required final String userId,
  }) async {
    final response = await _supabaseService.fetchDataWithFilter(
      tableName: TableName.sharedCodesToUser,
      filterColumn: FilterByColumn.sharedUser,
      filterValue: userId,
    );
    if (response.isEmpty) return null;
    return response.map((e) => SharedCodesToUserModel.fromJson(e)).toList();
  }
}
