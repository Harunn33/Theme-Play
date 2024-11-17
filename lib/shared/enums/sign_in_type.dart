import 'package:supabase_flutter/supabase_flutter.dart';

enum SignInType {
  google,
  apple,
}

extension SignInProviderExt on SignInType {
  OAuthProvider get getProvider {
    switch (this) {
      case SignInType.google:
        return OAuthProvider.google;
      case SignInType.apple:
        return OAuthProvider.apple;
    }
  }
}
