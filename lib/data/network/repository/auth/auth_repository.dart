import 'dart:async';
import 'package:theme_play/data/network/services/supabase_service.dart';

part 'auth_repository_impl.dart';

final class AuthRepository implements IAuthRepository {
  AuthRepository._();

  static final AuthRepository instance = AuthRepository._();

  final SupabaseService _service = SupabaseService.instance;

  @override
  Future<void> signIn({
    required final String email,
    required final String password,
  }) async {
    await _service.signIn(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signUp({
    required final String email,
    required final String password,
  }) async {
    await _service.signUp(
      password: password,
      email: email,
    );
  }

  @override
  Future<void> signOut() async {
    await _service.signOut();
  }

  @override
  Future<void> forgotPassword(String email) async {
    await _service.forgotPassword(email);
  }
}
