// ignore_for_file: lines_longer_than_80_chars

import 'dart:developer';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:test_lime_commerce/core/config/build_config.dart';
import 'package:test_lime_commerce/shared/utils/ext.dart';

@LazySingleton(as: Dio)
class DioModule with DioMixin implements Dio {
  DioModule() {
    final newOptions = BaseOptions(
      contentType: 'application/json',
      connectTimeout: 120000,
      sendTimeout: 120000,
      receiveTimeout: 120001,
      baseUrl: BuildConfig.baseUrl,
      // headers: <String, String>{
      //   'x-rapidapi-key': EnvConfig.RAPID_API_KEY,
      //   'x-rapidapi-host': EnvConfig.RAPID_API_HOST,
      // },
    );

    options = newOptions;
    interceptors.add(LoggerInterceptor());

    httpClientAdapter = DefaultHttpClientAdapter();
  }
}

class LoggerInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('RESPONSE ${response.statusCode} => PATH: ${response.requestOptions.baseUrl}${response.requestOptions.path}\nRESPONSE METHOD => ${response.requestOptions.method}\n${getPrettyJSONString(response.data)}');

    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log('\nERROR_RESPONSE[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}\nRESPONSE:\n${err.response?.data}');
    super.onError(err, handler);
  }
}
