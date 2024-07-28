part of "storage_repository.dart";

abstract class IStorageRepository {
  Future<String> getImages();
  Future<String> uploadImage();
}
