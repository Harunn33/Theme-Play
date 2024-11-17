part of 'auth_repository.dart';

abstract class IAuthRepository {
  Future<void> signIn({
    required String email,
    required String password,
  });

  Future<void> signInWithProvider({
    required SignInType provider,
  });

  Future<void> signUp({
    required String email,
    required String password,
  });

  Future<void> signOut();

  Future<void> forgotPassword(String email);
}
