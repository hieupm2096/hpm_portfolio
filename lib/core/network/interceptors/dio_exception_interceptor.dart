import 'package:dio/dio.dart';

/// {@template dio_error_interceptor}
/// Dio Error Interceptor
/// {@endtemplate}
class DioExceptionInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return handler.next(TimeoutException(err.requestOptions));

      case DioExceptionType.badResponse:
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
          case 422:
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

      case DioExceptionType.badCertificate:
        return handler.next(BadCertificateException(err.requestOptions));
      case DioExceptionType.unknown:
        return handler.next(UnknownErrorException(err.requestOptions));
      case DioExceptionType.cancel:
        return handler.next(err);
    }

    super.onError(err, handler);
  }
}

/// {@template interceptor}
/// ResponseException
/// {@endtemplate}
class ResponseException extends DioException {
  /// {@macro ResponseException}
  ResponseException({
    required super.requestOptions,
    super.response,
  });

  @override
  String toString() {
    final data = response?.data;

    if (data != null && data is Map<String, dynamic>) {
      try {
        final message = data['message'] as String?;
        final detail = data['detail'] as String?;
        final title = data['title'] as String?;
        return detail ?? title ?? message ?? "There's was error";
      } on Exception {
        return "There's was error";
      }
    }

    return "There's was error";
  }
}

/// {@template interceptor}
/// ServiceUnavailableException
/// {@endtemplate}
class ServiceUnavailableException extends DioException {
  /// {@macro ServiceUnavailableException}
  ServiceUnavailableException({required super.requestOptions});
}

/// {@template interceptor}
/// UnauthorizedException
/// {@endtemplate}
class UnauthorizedException extends DioException {
  /// {@macro UnauthorizedException}
  UnauthorizedException({
    required super.requestOptions,
    super.response,
  });

  @override
  String toString() {
    final data = response?.data;

    if (data != null && data is Map<String, dynamic>) {
      try {
        final message = data['message'] as String?;
        final detail = data['detail'] as String?;
        final title = data['title'] as String?;
        return detail ?? title ?? message ?? 'Unauthorized';
      } on Exception {
        return 'Unauthorized';
      }
    }

    return 'Unauthorized';
  }
}

/// {@template interceptor}
/// ForbiddenException
/// {@endtemplate}
class ForbiddenException extends DioException {
  /// {@macro ForbiddenException}
  ForbiddenException({
    required super.requestOptions,
    super.response,
  });
}

/// {@template interceptor}
/// BadNetworkException
/// {@endtemplate}
class BadNetworkException extends DioException {
  /// {@macro BadNetworkException}
  BadNetworkException(RequestOptions r) : super(requestOptions: r);
}

/// {@template interceptor}
/// TimeoutException
/// {@endtemplate}
class TimeoutException extends DioException {
  /// {@macro TimeoutException}
  TimeoutException(RequestOptions r) : super(requestOptions: r);
}

/// {@template interceptor}
/// BadCertificateException
/// {@endtemplate}
class BadCertificateException extends DioException {
  /// {@macro BadCertificateException}
  BadCertificateException(RequestOptions r) : super(requestOptions: r);
}

/// {@template interceptor}
/// UnknownErrorException
/// {@endtemplate}
class UnknownErrorException extends DioException {
  /// {@macro UnknownErrorException}
  UnknownErrorException(RequestOptions r) : super(requestOptions: r);
}
