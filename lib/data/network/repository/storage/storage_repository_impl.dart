part of "storage_repository.dart";

abstract class IStorageRepository {
  Future<String> getImages({
    required final String path,
    required final BucketName bucketName,
  });
  Future<String> uploadImage({
    required final String path,
    required final BucketName bucketName,
  });
}
