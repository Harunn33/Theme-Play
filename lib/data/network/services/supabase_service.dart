import 'dart:async';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/extensions/index.dart';
import 'package:theme_play/shared/extensions/snackbar_ext.dart';

part 'supabase_service_impl.dart';

final class SupabaseService implements ISupabaseService {
  SupabaseService._();

  static SupabaseService instance = SupabaseService._();

  final String supabaseUrl = dotenv.env['SUPABASE_URL'].toString();
  final String supabaseKey = dotenv.env['SUPABASE_KEY'].toString();

  static late final SupabaseClient _client;

  Future<void> initialize() async {
    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseKey,
      authOptions: FlutterAuthClientOptions(
        pkceAsyncStorage: SharedPreferencesGotrueAsyncStorage(),
      ),
    ).then((value) => _client = value.client);
    client.auth.onAuthStateChange.listen((event) {
      print("-----------------------------------------------------------");
      print("Auth state changed: ${event.event}");
    });
  }

  static SupabaseClient get client => _client;

  @override
  Future<PostgrestList> fetchData({
    required final TableName tableName,
  }) async {
    try {
      final PostgrestList response =
          await client.from(tableName.value).select("*");
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> insertData({
    required final TableName tableName,
    required final Map<String, dynamic> data,
  }) async {
    try {
      await client.from(tableName.value).insert(data);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> updateData({
    required final TableName tableName,
    required final Map<String, dynamic> data,
    required final FilterByColumn condition,
    required final String conditionEquality,
  }) async {
    try {
      await client
          .from(tableName.value)
          .update(data)
          .eq(condition.value, conditionEquality);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> deleteData({
    required final TableName tableName,
    required final FilterByColumn column,
    required final String value,
  }) async {
    try {
      await client.from(tableName.value).delete().eq(
            column.value,
            value,
          );
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> signIn({
    required final String email,
    required final String password,
  }) async {
    try {
      await _client.auth.signInWithPassword(
        password: password,
        email: email,
      );
    } on AuthException catch (e) {
      SnackbarType.error.show(message: e.message);
      throw Exception("AuthException to sign in: $e");
    } catch (e) {
      throw Exception("Failed to sign in: $e");
    }
  }

  @override
  Future<void> signUp({
    required final String email,
    required final String password,
  }) async {
    try {
      await _client.auth.signUp(
        password: password,
        email: email,
      );
    } on AuthException catch (e) {
      SnackbarType.error.show(message: e.message);
      throw Exception("AuthException to sign up: $e");
    } catch (e) {
      throw Exception("Failed to sign up: $e");
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _client.auth.signOut();
    } on AuthApiException catch (e) {
      throw Exception("AuthApiException to sign out: $e");
    } catch (e) {
      throw Exception("Failed to sign out: $e");
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      await _client.auth.resetPasswordForEmail(email);
    } on AuthException catch (e) {
      SnackbarType.error.show(message: e.message);
      throw Exception("AuthException to sign up: $e");
    } catch (e) {
      SnackbarType.error.show(message: e.toString());
      throw Exception("Failed to reset password: $e");
    }
  }

  @override
  Future<void> signInWithProvider({
    required final SignInType provider,
  }) async {
    LoadingStatus.loading.showLoadingDialog();
    final rawNonce = _client.auth.generateRawNonce();
    String? accessToken;
    String? idToken;
    String? nonce = rawNonce;

    if (provider == SignInType.google) {
      final Map<String, dynamic> resp = await _signInWithGoogle();
      idToken = resp['idToken'];
      accessToken = resp['accessToken'];
    }
    //  else if (provider == SignInType.apple) {
    //   final String? token = await _signInWithApple(rawNonce: nonce);
    //   idToken = token;
    // }

    if (idToken == null) {
      throw 'No ID Token found.';
    }
    try {
      await _client.auth.signInWithIdToken(
        provider: provider.getProvider,
        idToken: idToken,
        accessToken: accessToken,
        nonce: rawNonce,
      );
      Get.offAllNamed(Routes.navBar);
    } on AuthException catch (e) {
      SnackbarType.error.show(message: e.message);
      throw Exception("AuthException to sign in with provider: $e");
    } catch (e) {
      throw Exception("Failed to sign in with provider: $e");
    } finally {
      LoadingStatus.loaded.showLoadingDialog();
    }
  }

  @override
  Future<Map<String, dynamic>> _signInWithGoogle() async {
    /// Web Client ID that you registered with Google Cloud.
    final String? webClientId = dotenv.env["WEB_CLIENT_ID"];

    /// iOS Client ID that you registered with Google Cloud.
    // final String? iosClientId = dotenv.env["IOS_CLIENT_ID"];

    // Google sign in on Android will work without providing the Android
    // Client ID registered on Google Cloud.

    final GoogleSignIn googleSignIn = GoogleSignIn(
      // clientId: iosClientId,
      serverClientId: webClientId,
    );
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    if (accessToken == null) {
      throw 'No Access Token found.';
    }

    return {
      'accessToken': accessToken,
      'idToken': idToken,
    };
  }
}
