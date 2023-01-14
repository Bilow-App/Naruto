abstract class SecureStorageUtilityAbstract {
  Future<void> write(String key, String value);
  Future<String?> read(String key);
  Future<Map<String, String>> readAll();
  Future<void> delete(String key);
  Future<void> deleteAll();
  Future<bool> contains(String key);
}