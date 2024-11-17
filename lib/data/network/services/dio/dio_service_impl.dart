part of 'dio_service.dart';

/// An interface for Dio
abstract class IDioService {
  // POST request
  Future<Response<T>> post<T>(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });
}
