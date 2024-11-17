part of 'image_picker_service.dart';

abstract class IImagePickerService {
  Future<XFile?> pickImage();
  Future<List<XFile>> pickMultiImages();
}
