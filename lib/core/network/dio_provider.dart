import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hpm_portfolio/core/network/interceptors/auth_interceptor.dart';
import 'package:hpm_portfolio/core/network/interceptors/dio_exception_interceptor.dart';
import 'package:hpm_portfolio/core/network/interceptors/dio_loggy_interceptor.dart';
import 'package:hpm_portfolio/gen/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  final dio = Dio();
  dio.options.baseUrl = Env.host;
  dio.options.connectTimeout = const Duration(seconds: 5);
  dio.options.sendTimeout = const Duration(seconds: 5);
  dio.options.receiveTimeout = const Duration(seconds: 10);

  dio.interceptors.add(AuthInterceptor());

  if (kDebugMode) {
    dio.interceptors.add(
      LoggyDioInterceptor(
        requestBody: true,
        requestHeader: true,
      ),
    );
  }
  dio.interceptors.add(DioExceptionInterceptor());
  return dio;
}
