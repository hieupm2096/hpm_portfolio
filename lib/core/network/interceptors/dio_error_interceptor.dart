import 'package:dio/dio.dart';

/// {@template dio_error_interceptor}
/// Dio Error Interceptor
/// {@endtemplate}
class DioErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        return handler.next(TimeoutException(err.requestOptions));
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 401:
          case 403:
            return handler.next(
              UnauthorizedException(
                requestOptions: err.requestOptions,
                response: err.response,
              ),
            );
          case 400:
          case 404:
          case 409:
          case 500:
            return handler.next(
              ResponseException(
                requestOptions: err.requestOptions,
                response: err.response,
              ),
            );
          case 502:
            return handler.next(
              ServiceUnavailableException(
                requestOptions: err.requestOptions,
              ),
            );
        }
        break;
      case DioErrorType.other:
        return handler.next(BadNetworkException(err.requestOptions));
      case DioErrorType.cancel:
        return handler.next(err);
    }

    super.onError(err, handler);
  }
}

/// {@template interceptor}
/// ResponseException
/// {@endtemplate}
class ResponseException extends DioError {
  /// {@macro ResponseException}
  ResponseException({
    required super.requestOptions,
    super.response,
  });

  // @override
  // String toString() {
  //   final data = response?.data;
  //
  //   if (data != null && data is Map<String, dynamic>) {
  //     try {
  //       final res = BaseResponse.fromJson(data, (json) => null);
  //       return res.error?.message ?? 'Có lỗi xảy ra';
  //     } on Exception {
  //       return 'Có lỗi xảy ra';
  //     }
  //   }
  //
  //   return 'Có lỗi xảy ra';
  // }
}

/// {@template interceptor}
/// ServiceUnavailableException
/// {@endtemplate}
class ServiceUnavailableException extends DioError {
  /// {@macro ServiceUnavailableException}
  ServiceUnavailableException({required super.requestOptions});

  // @override
  // String toString() {
  //   return 'Dịch vụ hiện đang bị gián đoạn';
  // }
}

/// {@template interceptor}
/// UnauthorizedException
/// {@endtemplate}
class UnauthorizedException extends DioError {
  /// {@macro UnauthorizedException}
  UnauthorizedException({
    required super.requestOptions,
    super.response,
  });

  // @override
  // String toString() {
  //   return 'Thông tin tài khoản hoặc mật khẩu không đúng';
  // }
}

/// {@template interceptor}
/// ForbiddenException
/// {@endtemplate}
class ForbiddenException extends DioError {
  /// {@macro ForbiddenException}
  ForbiddenException({
    required super.requestOptions,
    super.response,
  });

  // @override
  // String toString() {
  //   return 'Không có quyền truy cập';
  // }
}

/// {@template interceptor}
/// BadNetworkException
/// {@endtemplate}
class BadNetworkException extends DioError {
  /// {@macro BadNetworkException}
  BadNetworkException(RequestOptions r) : super(requestOptions: r);

  // @override
  // String toString() {
  //   return 'Không có kết nối, vui lòng thử lại';
  // }
}

/// {@template interceptor}
/// TimeoutException
/// {@endtemplate}
class TimeoutException extends DioError {
  /// {@macro TimeoutException}
  TimeoutException(RequestOptions r) : super(requestOptions: r);

  // @override
  // String toString() {
  //   return 'Kết nối bị gián đoạn, vui lòng thử lại';
  // }
}
