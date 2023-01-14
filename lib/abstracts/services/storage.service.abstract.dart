// 🎯 Dart imports:
import 'dart:typed_data';

abstract class StorageServiceAbstract {
  Future<String?> upload({required String path, required Uint8List file});
  Future<void> delete({required String pathToFile});
}
