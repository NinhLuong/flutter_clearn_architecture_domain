// ThinhNguyen
// 14:02 22/8/24

// Abstract class for Flutter Secure Storage
abstract class SecureStorageClient {
  Future<String?> read(String key);
  Future<void> write(String key, String value);
  Future<bool> containsKey(String key);
  Future<void> delete(String key);
  Future<void> deleteAll();
}