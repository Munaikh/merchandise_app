import 'package:hive_flutter/hive_flutter.dart';

import 'storage_service.dart';

class HiveStorageService implements StorageService {
  late Box _hiveBox;

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    _hiveBox = await Hive.openBox('rent4me');
  }

  @override
  Future<void> remove(String key) async {
    _hiveBox.delete(key);
  }

  @override
  dynamic get(String key) {
    return _hiveBox.get(key);
  }

  @override
  bool has(String key) {
    return _hiveBox.containsKey(key);
  }

  @override
  Future<void> set(String? key, dynamic data) async {
    _hiveBox.put(key, data);
  }

  @override
  Future<void> clear() async {
    await _hiveBox.clear();
  }
}
