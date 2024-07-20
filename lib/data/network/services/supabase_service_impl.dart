part of 'supabase_service.dart';

/// An interface for Supabase
abstract class ISupabaseService {
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

  // Auth
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