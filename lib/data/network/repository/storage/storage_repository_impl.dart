part of "storage_repository.dart";

abstract class IStorageRepository {
  Future<String> getImages({
    required final String path,
    required final BucketName bucketName,
  });
  Future<void> removeImage({
    required final List<String> imagePaths,
    required final BucketName bucketName,
  });
  Future<String> uploadImage({
    required final String path,
    required final BucketName bucketName,
  });

  Future<String> uploadMultiImages({
    required final XFile image,
    required final String path,
    required final BucketName bucketName,
  });
}
