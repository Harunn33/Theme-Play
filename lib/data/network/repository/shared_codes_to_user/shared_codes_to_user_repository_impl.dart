part of "shared_codes_to_user_repository.dart";

abstract class ISharedCodesToUserRepository {
  Future<void> addSharedCodes({
    required final String shareableCode,
  });

  Future<List<SharedCodesToUserModel>> getSharedCodesToUsers();
}
