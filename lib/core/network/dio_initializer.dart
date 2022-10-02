import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';

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
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          queryParameters: true,
          requestBody: true,
          responseHeader: true,
          showCUrl: true,
          canShowLog: kDebugMode,
        ),
      );
    }

    _dio.interceptors.add(DioErrorInterceptor());

    return _dio;
  }
}
