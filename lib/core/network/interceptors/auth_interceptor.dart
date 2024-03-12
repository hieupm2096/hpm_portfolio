import 'package:dio/dio.dart';
import 'package:hpm_portfolio/core/core.dart';
import 'package:hpm_portfolio/gen/env.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.headers.containsKey(Constants.kNoAuth)) {
      // if the request doesn't need token, then just continue to the next
      // interceptor
      options.headers.remove(Constants.kNoAuth); //remove the auxiliary header
      return handler.next(options);
    }

    options.headers['Authorization'] = 'bearer ${Env.strapiApiToken}';
    super.onRequest(options, handler);
  }
}
