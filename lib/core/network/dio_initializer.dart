import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';
import 'package:hpm_portfolio/core/network/interceptors/dio_error_interceptor.dart';

/// {@template DioInitializer}
/// DioInitializer implementation using [Dio]
/// {@endtemplate}
class DioInitializer {
  /// {@macro DioInitializer}
  DioInitializer._();

  static Dio? _dio;

  /// [Dio] instance
  static Dio get dio {
    if (_dio != null) {
      return _dio!;
    }

    _dio = Dio();
    _dio!.options.connectTimeout = const Duration(seconds: 30);
    _dio!.options.sendTimeout = const Duration(seconds: 30);
    _dio!.options.receiveTimeout = const Duration(seconds: 30);
    if (kDebugMode) {
      dio.interceptors.add(
        LoggyDioInterceptor(
          requestBody: true,
          requestHeader: true,
        ),
      );
    }

    _dio!.interceptors.add(DioErrorInterceptor());

    return _dio!;
  }
}
