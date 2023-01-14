// 🎯 Dart imports:
import 'dart:typed_data';

abstract class MediaUtilityAbstract {
  Future<Uint8List?> get imageFromCamera;
  Future<Uint8List?> get imageFromGallery;
  Future<List<Uint8List>> get imagesFromGallery;
  Future<Uint8List?> get videoFromCamera;
  Future<Uint8List?> get videoFromGallery;
}
