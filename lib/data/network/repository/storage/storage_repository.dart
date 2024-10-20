import 'package:image_picker/image_picker.dart';
import 'package:theme_play/data/local/image_picker/image_picker_service.dart';
import 'package:theme_play/data/network/repository/profile/profile_repository.dart';
import 'package:theme_play/data/network/services/supabase/index.dart';
import 'package:theme_play/shared/enums/bucket_name.dart';
import 'package:theme_play/shared/extensions/index.dart';

part 'storage_repository_impl.dart';

final class StorageRepository implements IStorageRepository {
  StorageRepository._();

  static StorageRepository instance = StorageRepository._();

  final SupabaseService _supabaseService = SupabaseService.instance;

  final ImagePickerService imagePickerService = ImagePickerService.instance;

  final ProfileRepository profileRepository = ProfileRepository.instance;

  @override
  Future<String> getImages({
    required final String path,
    required final BucketName bucketName,
  }) async {
    String imageUrl = await _supabaseService.fetchImagesFromStorage(
      bucketName: bucketName,
      path: path,
    );
    return imageUrl;
  }

  @override
  Future<void> removeImage({
    required final List<String> imagePaths,
    required final BucketName bucketName,
  }) async {
    await _supabaseService.removeImageFromStorage(
      imagePaths: imagePaths,
      bucketName: bucketName,
    );
  }

  @override
  Future<String> uploadImage({
    required final String path,
    required final BucketName bucketName,
  }) async {
    final image = await imagePickerService.pickImage();
    if (image == null) return "";
    LoadingStatus.loading.showLoadingDialog();
    final imageBytes = await image.readAsBytes();
    String imageUrl = await _supabaseService.fetchImagesFromStorage(
      bucketName: bucketName,
      path: path,
      isUpload: true,
      data: imageBytes,
      imageExtension: image.path.split('.').last.toLowerCase(),
    );
    imageUrl = Uri.parse(imageUrl).replace(queryParameters: {
      "t": DateTime.now().millisecondsSinceEpoch.toString(),
    }).toString();
    LoadingStatus.loaded.showLoadingDialog();
    return imageUrl;
  }

  @override
  Future<String> uploadMultiImages({
    required final XFile image,
    required final String path,
    required final BucketName bucketName,
  }) async {
    final imageBytes = await image.readAsBytes();
    String imageUrl = await _supabaseService.fetchImagesFromStorage(
      bucketName: bucketName,
      path: path,
      isUpload: true,
      data: imageBytes,
      imageExtension: image.path.split('.').last.toLowerCase(),
    );
    imageUrl = Uri.parse(imageUrl).replace(queryParameters: {
      "t": DateTime.now().millisecondsSinceEpoch.toString(),
    }).toString();

    return imageUrl;
  }
}
