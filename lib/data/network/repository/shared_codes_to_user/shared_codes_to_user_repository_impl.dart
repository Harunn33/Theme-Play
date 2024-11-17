part of 'shared_codes_to_user_repository.dart';

abstract class ISharedCodesToUserRepository {
  Future<void> addSharedCodes({
    required String shareableCode,
    required String sharedUser,
    required bool themeEditAccess,
  });

  Future<List<SharedCodesToUserModel>?> getSharedCodesToUsers({
    required String userId,
  });

  Future<void> removeSharedCodes({
    required String shareableCode,
    required String userId,
  });
}
