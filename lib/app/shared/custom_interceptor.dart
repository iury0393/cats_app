import 'package:dio/dio.dart';

import 'constants.dart';
import 'utils.dart';

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return super.onError(err, handler);
  }

  static Map<String, dynamic> getDefaultHeaders() {
    final Map<String, dynamic> headers = {
      'Content-type': 'application/json',
      'UUID': Utils.deviceId,
      'App-version': Utils.appVersion,
      'Accept': 'application/json',
      'Client-ID': kClientId,
      'Accept-Language': Utils.appLanguage
    };

    return headers;
  }
}
