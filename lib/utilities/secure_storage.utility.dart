import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:starter/abstracts/abstracts.dart';

class SecureStorageUtility implements SecureStorageUtilityAbstract {
  final FlutterSecureStorage _secureStorage;

  SecureStorageUtility({FlutterSecureStorage? secureStorage})
      : _secureStorage = secureStorage ?? const FlutterSecureStorage();

  @override
  Future<void> write(String key, String value) async {
    return await _secureStorage.write(key: key, value: value);
  }

  @override
  Future<String?> read(String key) async {
    return await _secureStorage.read(key: key);
  }

  @override
  Future<Map<String, String>> readAll() {
    return _secureStorage.readAll();
  }

  @override
  Future<void> delete(String key) async {
    return await _secureStorage.delete(key: key);
  }

  @override
  Future<void> deleteAll() {
    return _secureStorage.deleteAll();
  }

  @override
  Future<bool> contains(String key) {
    return _secureStorage.containsKey(key: key);
  }
}
