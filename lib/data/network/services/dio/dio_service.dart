import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart' hide Response;
import 'package:theme_play/shared/extensions/loading_dialog_ext.dart';
import 'package:theme_play/shared/extensions/snackbar_ext.dart';

part 'dio_service_impl.dart';

final class DioService implements IDioService {
  DioService._();

  static final DioService instance = DioService._();

  static final _options = BaseOptions(
    connectTimeout: 2.minutes,
    receiveTimeout: 2.minutes,
    sendTimeout: 2.minutes,
    headers: {
      'Authorization': "${dotenv.env['ONESIGNAL_REST_API_KEY']}",
    },
  );

  final Dio _dio = Dio(_options)..interceptors.add(LogInterceptor());

  // POST request
  @override
  Future<Response<T>> post<T>(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.post<T>(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      SnackbarType.error.show(
        message: e.toString(),
      );
      rethrow;
    } finally {
      LoadingStatus.loaded.showLoadingDialog();
    }
  }
}
