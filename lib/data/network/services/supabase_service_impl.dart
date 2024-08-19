part of 'supabase_service.dart';

/// An interface for Supabase
abstract class ISupabaseService {
  Future<SupabaseQueryBuilder> baseFetchData({
    required final TableName tableName,
  });

  /// Fetch data from a table
  Future<PostgrestList> fetchData({
    required final TableName tableName,
  });

  /// Insert data into a table
  Future<void> insertData({
    required final TableName tableName,
    required final Map<String, dynamic> data,
  });

  /// Update data in a table
  Future<void> updateData({
    required final TableName tableName,
    required final Map<String, dynamic> data,
    required final FilterByColumn condition,
    required final String conditionEquality,
  });

  /// Delete data from a table
  Future<void> deleteData({
    required final TableName tableName,
    required final FilterByColumn column,
    required final String value,
  });

  Future<String> fetchImagesFromStorage({
    required final BucketName bucketName,
    required final String path,
    final bool isUpload = false,
    final Uint8List? data,
    final String? imageExtension,
  });

  /// Fetch data from a table with search
  Future<PostgrestList> fetchDataWithSearch({
    required final TableName tableName,
    required final FilterByColumn searchColumn,
    required final String searchValue,
  });

  /// Fetch data from a table with filter
  Future<PostgrestList> fetchDataWithFilter({
    required final TableName tableName,
    required final FilterByColumn filterColumn,
    required final String filterValue,
  });

  // Auth
  Future<void> signIn({
    required final String email,
    required final String password,
  });

  Future<void> signInWithProvider({
    required final SignInType provider,
  });

  Future<Map<String, dynamic>> _signInWithGoogle();

  Future<void> _signOutWithGoogle();

  Future<void> signUp({
    required final String email,
    required final String password,
  });

  Future<void> signOut();

  Future<void> forgotPassword(String email);
}
