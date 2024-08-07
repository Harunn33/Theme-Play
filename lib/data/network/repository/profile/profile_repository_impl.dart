part of 'profile_repository.dart';

abstract class IProfileRepository {
  Future<User?> getProfile();
  Future<User?> updateProfile(UserAttributes userModel);
  Future<String> getProfilePhoto();
  Future<String> uploadProfilePhoto();
}
