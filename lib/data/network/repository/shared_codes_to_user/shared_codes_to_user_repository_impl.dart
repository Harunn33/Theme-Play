part of "shared_codes_to_user_repository.dart";

abstract class ISharedCodesToUserRepository {
  Future<void> addSharedCodes({
    required final String shareableCode,
    required final String sharedUser,
    required final bool themeEditAccess,
  });

  Future<List<SharedCodesToUserModel>?> getSharedCodesToUsers({
    required final String userId,
  });

  Future<void> removeSharedCodes({
    required final String shareableCode,
    required final String userId,
  });
}
