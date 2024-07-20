part of 'auth_repository.dart';

abstract class IAuthRepository {
  Future<void> signIn({
    required final String email,
    required final String password,
  });

  Future<void> signUp({
    required final String email,
    required final String password,
  });

  Future<void> signOut();

  Future<void> forgotPassword(String email);
}
