import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hpm_portfolio/core/network/interceptors/dio_error_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

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
      _dio!.interceptors.add(PrettyDioLogger());
    }

    _dio!.interceptors.add(DioErrorInterceptor());

    return _dio!;
  }
}
