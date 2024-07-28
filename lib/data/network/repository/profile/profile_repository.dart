import 'dart:async';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/data/network/services/supabase_service.dart';
import 'package:theme_play/shared/extensions/loading_dialog_ext.dart';

part 'profile_repository_impl.dart';

final class ProfileRepository implements IProfileRepository {
  ProfileRepository._();

  static final ProfileRepository instance = ProfileRepository._();

  final SupabaseClient _client = SupabaseService.client;

  @override
  Future<User?> getProfile() async {
    try {
      final UserResponse user = await _client.auth.getUser();
      return user.user;
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
      Get.back();
      return user.user;
    } on AuthException catch (e) {
      throw "Update profile failed with error: ${e.message}";
    } catch (e) {
      throw "Update profile failed";
    } finally {
      LoadingStatus.loaded.showLoadingDialog();
    }
  }
}
