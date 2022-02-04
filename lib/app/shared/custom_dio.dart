import 'package:dio/native_imp.dart';
import 'package:flutter/foundation.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'constants.dart';
import 'custom_interceptor.dart';

class CustomDio extends DioForNative {
  final CustomInterceptor customInterceptor;
  CustomDio(this.customInterceptor) {
    if (kDebugMode) {
      interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true, responseBody: true));
    }
    options.baseUrl = kBaseURL;
    options.connectTimeout = 60000;
    interceptors.add(customInterceptor);
  }
}
