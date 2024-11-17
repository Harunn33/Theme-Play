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
    required String path,
    required BucketName bucketName,
  }) async {
    final imageUrl = await _supabaseService.fetchImagesFromStorage(
      bucketName: bucketName,
      path: path,
    );
    return imageUrl;
  }

  @override
  Future<void> removeImage({
    required List<String> imagePaths,
    required BucketName bucketName,
  }) async {
    await _supabaseService.removeImageFromStorage(
      imagePaths: imagePaths,
      bucketName: bucketName,
    );
  }

  @override
  Future<void> removeFolder({
    required BucketName bucketName,
    required String folderPath,
  }) async {
    await _supabaseService.removeFolderFromStorage(
      bucketName: bucketName,
      folderPath: folderPath,
    );
  }

  @override
  Future<String> uploadImage({
    required String path,
    required BucketName bucketName,
  }) async {
    final image = await imagePickerService.pickImage();
    if (image == null) return '';
    LoadingStatus.loading.showLoadingDialog();
    final imageBytes = await image.readAsBytes();
    var imageUrl = await _supabaseService.fetchImagesFromStorage(
      bucketName: bucketName,
      path: path,
      isUpload: true,
      data: imageBytes,
      imageExtension: image.path.split('.').last.toLowerCase(),
    );
    imageUrl = Uri.parse(imageUrl).replace(
      queryParameters: {
        't': DateTime.now().millisecondsSinceEpoch.toString(),
      },
    ).toString();
    LoadingStatus.loaded.showLoadingDialog();
    return imageUrl;
  }

  @override
  Future<String> uploadMultiImages({
    required XFile image,
    required String path,
    required BucketName bucketName,
  }) async {
    final imageBytes = await image.readAsBytes();
    final imageUrl = await _supabaseService.fetchImagesFromStorage(
      bucketName: bucketName,
      path: path,
      isUpload: true,
      data: imageBytes,
      imageExtension: image.path.split('.').last.toLowerCase(),
    );
    return Uri.parse(imageUrl).replace(
      queryParameters: {
        't': DateTime.now().millisecondsSinceEpoch.toString(),
      },
    ).toString();
  }
}
