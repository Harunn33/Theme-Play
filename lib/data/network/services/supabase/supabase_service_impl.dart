part of 'supabase_service.dart';

/// An interface for Supabase
abstract class ISupabaseService {
  Future<SupabaseQueryBuilder> baseFetchData({
    required TableName tableName,
  });

  /// Fetch data from a table
  Future<PostgrestList> fetchData({
    required TableName tableName,
  });

  /// Insert data into a table
  Future<void> insertData({
    required TableName tableName,
    required Map<String, dynamic> data,
  });

  /// Update data in a table
  Future<void> updateData({
    required TableName tableName,
    required Map<String, dynamic> data,
    required FilterByColumn filterColumn,
    required String value,
  });

  /// Delete data from a table
  Future<void> deleteData({
    required TableName tableName,
    required FilterByColumn column,
    required String value,
  });

  Future<String> fetchImagesFromStorage({
    required BucketName bucketName,
    required String path,
    bool isUpload = false,
    Uint8List? data,
    String? imageExtension,
  });

  Future<void> removeImageFromStorage({
    required BucketName bucketName,
    required List<String> imagePaths,
  });

  Future<void> removeFolderFromStorage({
    required BucketName bucketName,
    required String folderPath,
  });

  /// Fetch data from a table with search
  Future<PostgrestList> fetchDataWithSearchByUserId({
    required TableName tableName,
    required FilterByColumn searchColumn,
    required FilterByColumn userIdColumn,
    required String searchValue,
    required String userId,
  });

  /// Fetch data from a table with filter
  Future<PostgrestList> fetchDataWithFilter({
    required TableName tableName,
    required FilterByColumn filterColumn,
    required String filterValue,
  });

  /// Fetch data from a table with 2 filters
  /// [firstFilterColumn] and [secondFilterColumn] are the columns to filter by
  /// [firstFilterValue] and [secondFilterValue] are the values to filter by
  Future<PostgrestList> fetchDataWithTwoFilters({
    required TableName tableName,
    required FilterByColumn firstFilterColumn,
    required String firstFilterValue,
    required FilterByColumn secondFilterColumn,
    required String secondFilterValue,
  });

  // Auth
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
