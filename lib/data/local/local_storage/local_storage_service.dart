import 'dart:async';

part 'local_storage_service_impl.dart';

class LocalStorageService implements ILocalStorageService {
  @override
  Future<void> clearAllData() {
    // TODO: implement clearAllData
    throw UnimplementedError();
  }

  @override
  Future<void> removeData(String key) {
    // TODO: implement removeData
    throw UnimplementedError();
  }

  @override
  FutureOr<T?> retrieveData<T>(String key) {
    // TODO: implement retrieveData
    throw UnimplementedError();
  }

  @override
  Future<void> saveData(String key, value) {
    // TODO: implement saveData
    throw UnimplementedError();
  }
}
