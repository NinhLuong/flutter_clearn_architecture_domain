// ThinhNguyen
// 14:01 22/8/24

// Abstract class for Hive storage
import 'package:hive/hive.dart';

abstract class HiveStorageClient {
  final String boxName;

  HiveStorageClient(this.boxName);

  Future<Box> getBox();
  Future<void> closeBox();
  Future<T?> get<T>(String key, {T? defaultValue});
  Future<void> put<T>(String key, T value);
  Future<bool> containsKey(String key);
  Future<void> delete(String key);
  Future<int> clear();
}
