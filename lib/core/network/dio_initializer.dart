import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hpm_portfolio/core/network/interceptors/dio_error_interceptor.dart';

/// {@template DioInitializer}
/// DioInitializer implementation using [Dio]
/// {@endtemplate}
class DioInitializer {
  /// {@macro DioInitializer}
  DioInitializer._();

  static final _dio = Dio();

  /// [Dio] instance
  static Dio get dio {
    if (kDebugMode) {
      // _dio.interceptors.add(

      // );
    }

    _dio.interceptors.add(DioErrorInterceptor());

    return _dio;
  }
}
