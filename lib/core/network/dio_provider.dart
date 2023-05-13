import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';
import 'package:hpm_portfolio/core/network/interceptors/dio_error_interceptor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  final dio = Dio();
  dio.options.connectTimeout = const Duration(seconds: 5);
  dio.options.sendTimeout = const Duration(seconds: 5);
  dio.options.receiveTimeout = const Duration(seconds: 10);
  if (kDebugMode) {
    dio.interceptors.add(
      LoggyDioInterceptor(
        requestBody: true,
        requestHeader: true,
      ),
    );
  }
  dio.interceptors.add(DioErrorInterceptor());
  return dio;
}
