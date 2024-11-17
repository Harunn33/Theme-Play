part of 'storage_repository.dart';

abstract class IStorageRepository {
  Future<String> getImages({
    required String path,
    required BucketName bucketName,
  });
  Future<void> removeImage({
    required List<String> imagePaths,
    required BucketName bucketName,
  });
  Future<void> removeFolder({
    required BucketName bucketName,
    required String folderPath,
  });
  Future<String> uploadImage({
    required String path,
    required BucketName bucketName,
  });

  Future<String> uploadMultiImages({
    required XFile image,
    required String path,
    required BucketName bucketName,
  });
}
