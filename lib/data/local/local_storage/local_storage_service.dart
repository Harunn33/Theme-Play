import 'dart:async';

import 'package:get_storage/get_storage.dart';

part 'local_storage_service_impl.dart';

class LocalStorageService implements ILocalStorageService {
  LocalStorageService._init();
  static final GetStorage _storage = GetStorage();

  Future<void> init() async {
    await GetStorage.init();
  }

  static final LocalStorageService _instance = LocalStorageService._init();

  static LocalStorageService get instance {
    return _instance;
  }

  @override
  void saveData(String key, dynamic value) {
    _storage.write(key, value);
  }

  @override
  T? retrieveData<T>(String key) {
    final data = _storage.read(key);
    return data as T;
  }

  @override
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  @override
  Future<void> clearAllData() async {
    await _storage.erase();
  }
}
