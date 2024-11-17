part of 'local_storage_service.dart';

abstract class ILocalStorageService {
  void saveData(String key, dynamic value);
  FutureOr<T?> retrieveData<T>(String key);
  Future<void> removeData(String key);
  Future<void> clearAllData();
}
