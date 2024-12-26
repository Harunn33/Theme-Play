import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theme_play/routes/app_pages.dart';
import 'package:theme_play/shared/enums/index.dart';
import 'package:theme_play/shared/extensions/index.dart';

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
    client.auth.onAuthStateChange.listen((event) async {
      if (event.event == AuthChangeEvent.signedOut) {
        unawaited(Get.offAllNamed(Routes.signIn));
      }
    });
  }

  static SupabaseClient get client => _client;

  @override
  Future<SupabaseQueryBuilder> baseFetchData({
    required TableName tableName,
  }) async {
    try {
      return client.from(tableName.value);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<PostgrestList> fetchData({
    required TableName tableName,
  }) async {
    try {
      final response = await client.from(tableName.value).select().order(
            FilterByColumn.createdAt.value,
            ascending: false,
          );
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> insertData({
    required TableName tableName,
    required Map<String, dynamic> data,
  }) async {
    try {
      await client.from(tableName.value).insert(data);
    } on PostgrestException catch (e) {
      SnackbarType.error.show(message: e.details.toString());
      rethrow;
    } finally {
      LoadingStatus.loaded.showLoadingDialog();
    }
  }

  @override
  Future<void> updateData({
    required TableName tableName,
    required Map<String, dynamic> data,
    required FilterByColumn filterColumn,
    required String value,
  }) async {
    try {
      await client.from(tableName.value).update(data).eq(
            filterColumn.value,
            value,
          );
    } catch (e) {
      throw Exception(e);
    } finally {
      LoadingStatus.loaded.showLoadingDialog();
    }
  }

  @override
  Future<void> deleteData({
    required TableName tableName,
    required FilterByColumn column,
    required String value,
  }) async {
    try {
      await client.from(tableName.value).delete().eq(
            column.value,
            value,
          );
    } catch (e) {
      throw Exception(e);
    } finally {
      LoadingStatus.loaded.showLoadingDialog();
    }
  }

  @override
  Future<String> fetchImagesFromStorage({
    required BucketName bucketName,
    required String path,
    bool isUpload = false,
    Uint8List? data,
    String? imageExtension,
  }) async {
    try {
      if (isUpload) {
        if (data == null) {
          throw PlatformException(
            code: 'no_data',
            message: 'No data found to upload.',
          );
        }
        await client.storage.from(bucketName.value).uploadBinary(
              path,
              data,
              fileOptions: FileOptions(
                upsert: true,
                contentType: 'image/$imageExtension',
              ),
            );
      }
      return client.storage.from(bucketName.value).getPublicUrl(path);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> removeImageFromStorage({
    required BucketName bucketName,
    required List<String> imagePaths,
  }) async {
    try {
      await client.storage.from(bucketName.value).remove(imagePaths);
    } catch (e) {
      LoadingStatus.loaded.showLoadingDialog();
      throw Exception(e);
    }
  }

  @override
  Future<void> removeFolderFromStorage({
    required BucketName bucketName,
    required String folderPath,
  }) async {
    try {
      // List the files in the folder
      final response = await client.storage.from(bucketName.value).list(
            path: folderPath,
          );

      if (response.isNotEmpty) {
        for (final file in response) {
          // Remove each file
          final filePath = '$folderPath/${file.name}';
          await removeImageFromStorage(
            bucketName: bucketName,
            imagePaths: [filePath],
          );
        }
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      LoadingStatus.loaded.showLoadingDialog();
    }
  }

  @override
  Future<PostgrestList> fetchDataWithSearchByUserId({
    required TableName tableName,
    required FilterByColumn searchColumn,
    required FilterByColumn userIdColumn,
    required String searchValue,
    required String userId,
  }) async {
    try {
      final response = await client
          .from(tableName.value)
          .select()
          .eq(userIdColumn.value, userId)
          .ilike(
            searchColumn.value,
            '%$searchValue%',
          );
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<PostgrestList> fetchDataWithFilter({
    required TableName tableName,
    required FilterByColumn filterColumn,
    required String filterValue,
  }) async {
    try {
      final response = await client.from(tableName.value).select().eq(
            filterColumn.value,
            filterValue,
          );
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<PostgrestList> fetchDataWithTwoFilters({
    required TableName tableName,
    required FilterByColumn firstFilterColumn,
    required String firstFilterValue,
    required FilterByColumn secondFilterColumn,
    required String secondFilterValue,
  }) async {
    try {
      final response = await client
          .from(tableName.value)
          .select()
          .eq(firstFilterColumn.value, firstFilterValue)
          .eq(secondFilterColumn.value, secondFilterValue);
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await client.auth.signInWithPassword(
        password: password,
        email: email,
      );
    } on AuthException catch (e) {
      SnackbarType.error.show(message: e.message);
      throw Exception('AuthException to sign in: $e');
    } catch (e) {
      throw Exception('Failed to sign in: $e');
    }
  }

  @override
  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await client.auth.signUp(
        password: password,
        email: email,
      );
    } on AuthException catch (e) {
      SnackbarType.error.show(message: e.message);
      throw Exception('AuthException to sign up: $e');
    } catch (e) {
      throw Exception('Failed to sign up: $e');
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await client.auth.signOut();
      await _signOutWithGoogle();
    } on AuthApiException catch (e) {
      throw Exception('AuthApiException to sign out: $e');
    } catch (e) {
      throw Exception('Failed to sign out: $e');
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      await client.auth.resetPasswordForEmail(email);
    } on AuthException catch (e) {
      SnackbarType.error.show(message: e.message);
      throw Exception('AuthException to sign up: $e');
    } catch (e) {
      SnackbarType.error.show(message: e.toString());
      throw Exception('Failed to reset password: $e');
    }
  }

  @override
  Future<void> signInWithProvider({
    required SignInType provider,
  }) async {
    LoadingStatus.loading.showLoadingDialog();
    // final rawNonce = _client.auth.generateRawNonce();
    String? accessToken;
    String? idToken;
    // String? nonce = rawNonce;

    if (provider == SignInType.google) {
      final resp = await _signInWithGoogle();
      idToken = resp['idToken'];
      accessToken = resp['accessToken'];
    }
    //  else if (provider == SignInType.apple) {
    //   final String? token = await _signInWithApple(rawNonce: nonce);
    //   idToken = token;
    // }

    if (idToken == null) {
      throw Exception('No id token found.');
    }
    try {
      await client.auth.signInWithIdToken(
        provider: provider.getProvider,
        idToken: idToken,
        accessToken: accessToken,
        // nonce: rawNonce,
      );
      unawaited(Get.offAllNamed(Routes.navBar));
    } on AuthException catch (e) {
      SnackbarType.error.show(message: e.message);
      throw Exception('AuthException to sign in with provider: $e');
    } catch (e) {
      throw Exception('Failed to sign in with provider: $e');
    } finally {
      LoadingStatus.loaded.showLoadingDialog();
    }
  }

  Future<Map<String, dynamic>> _signInWithGoogle() async {
    /// Web Client ID that you registered with Google Cloud.
    final webClientId = dotenv.env['WEB_CLIENT_ID'];

    /// iOS Client ID that you registered with Google Cloud.
    // final String? iosClientId = dotenv.env["IOS_CLIENT_ID"];

    // Google sign in on Android will work without providing the Android
    // Client ID registered on Google Cloud.

    final googleSignIn = GoogleSignIn(
      // clientId: iosClientId,
      serverClientId: webClientId,
    );
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    if (accessToken == null) {
      throw Exception('No access token found.');
    }

    return {
      'accessToken': accessToken,
      'idToken': idToken,
    };
  }

  Future<void> _signOutWithGoogle() async {
    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
  }
}
