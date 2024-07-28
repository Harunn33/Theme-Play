import 'dart:async';

import 'package:image_picker/image_picker.dart';

part 'image_picker_service_impl.dart';

final class ImagePickerService implements IImagePickerService {
  ImagePickerService._();

  static ImagePickerService instance = ImagePickerService._();

  final ImagePicker _picker = ImagePicker();

  @override
  Future<XFile?> pickImage() async {
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    return image;
  }
}
