import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Logging extends Interceptor {
  @override
  // ignore: unnecessary_overrides
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
  
    return super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(response, ResponseInterceptorHandler handler) async {
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    debugPrint(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    return super.onError(err, handler);
  }
}