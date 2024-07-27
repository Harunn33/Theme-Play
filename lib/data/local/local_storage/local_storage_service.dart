import 'dart:async';

import 'package:get_storage/get_storage.dart';

part 'local_storage_service_impl.dart';

class LocalStorageService implements ILocalStorageService {
  static final GetStorage _storage = GetStorage();

  Future<void> init() async {
    await GetStorage.init();
  }

  static final LocalStorageService _instance = LocalStorageService._init();

  LocalStorageService._init();

  static LocalStorageService get instance {
    return _instance;
  }

  @override
  Future<void> saveData(String key, dynamic value) async {
    _storage.write(key, value);
  }

  @override
  T? retrieveData<T>(String key) {
    final data = _storage.read(key);
    return data;
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
