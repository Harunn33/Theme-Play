import 'package:theme_play/data/models/index.dart';
import 'package:theme_play/data/network/repository/profile/profile_repository.dart';
import 'package:theme_play/data/network/services/supabase/index.dart';
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
  }) async {
    LoadingStatus.loading.showLoadingDialog();
    final ProfileRepository profileRepository = ProfileRepository.instance;
    final user = await profileRepository.getProfile();
    if (user == null) return LoadingStatus.loaded.showLoadingDialog();
    List<String> shareableCodes = <String>[];
    final sharedCodesToUsers = await getSharedCodesToUsers();
    if (sharedCodesToUsers == null) {
      final SharedCodesToUserModel sharedCodesToUserModel =
          SharedCodesToUserModel(
        createdAt: DateTime.now().toIso8601String(),
        createdBy: user.id,
        codes: [shareableCode],
      );
      await _supabaseService.insertData(
        tableName: TableName.sharedCodesToUser,
        data: sharedCodesToUserModel.toJson(),
      );
      LoadingStatus.loaded.showLoadingDialog();
      return;
    }
    shareableCodes = List<String>.from(sharedCodesToUsers.codes ?? []);
    shareableCodes.add(shareableCode);
    await _supabaseService.updateData(
      tableName: TableName.sharedCodesToUser,
      filterColumn: FilterByColumn.createdBy,
      value: user.id,
      data: {
        "codes": shareableCodes,
      },
    );
    LoadingStatus.loaded.showLoadingDialog();
  }

  @override
  Future<SharedCodesToUserModel?> getSharedCodesToUsers() async {
    final response = await _supabaseService.fetchData(
      tableName: TableName.sharedCodesToUser,
    );
    if (response.isEmpty) return null;
    return SharedCodesToUserModel.fromJson(response.first);
  }
}
