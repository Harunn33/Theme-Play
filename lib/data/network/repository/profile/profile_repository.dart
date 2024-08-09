import 'dart:async';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/data/network/repository/storage/storage_repository.dart';
import 'package:theme_play/data/network/services/supabase_service.dart';
import 'package:theme_play/shared/enums/bucket_name.dart';
import 'package:theme_play/shared/extensions/loading_dialog_ext.dart';

part 'profile_repository_impl.dart';

final class ProfileRepository implements IProfileRepository {
  ProfileRepository._();

  static final ProfileRepository instance = ProfileRepository._();

  final SupabaseClient _client = SupabaseService.client;

  @override
  Future<User?> getProfile() async {
    try {
      return _client.auth.currentUser;
    } on AuthException catch (e) {
      throw "Get profile failed with error: ${e.message}";
    } catch (e) {
      throw "Get profile failed";
    }
  }

  @override
  Future<User?> updateProfile(UserAttributes userModel) async {
    LoadingStatus.loading.showLoadingDialog();
    try {
      final UserResponse user = await _client.auth.updateUser(userModel);
      return user.user;
    } on AuthException catch (e) {
      throw "Update profile failed with error: ${e.message}";
    } catch (e) {
      throw "Update profile failed";
    } finally {
      LoadingStatus.loaded.showLoadingDialog();
    }
  }

  @override
  Future<String> getProfilePhoto() async {
    final StorageRepository storageRepository = StorageRepository.instance;
    final user = await getProfile();
    if (user == null) return "";
    final path = '${user.id}/profile';

    String imageUrl = await storageRepository.getImages(
      path: path,
      bucketName: BucketName.profilePhotos,
    );

    imageUrl = Uri.parse(imageUrl).replace(queryParameters: {
      "t": DateTime.now().millisecondsSinceEpoch.toString(),
    }).toString();
    return imageUrl;
  }

  @override
  Future<String> uploadProfilePhoto() async {
    final StorageRepository storageRepository = StorageRepository.instance;
    final user = await getProfile();
    if (user == null) return "";
    final path = '${user.id}/profile';
    return await storageRepository.uploadImage(
      path: path,
      bucketName: BucketName.profilePhotos,
    );
  }
}
