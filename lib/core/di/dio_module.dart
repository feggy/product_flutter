import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@LazySingleton(as: Dio)
class DioModule with DioMixin implements Dio {
  DioModule() {
    final newOptions = BaseOptions(
      contentType: 'application/json',
      connectTimeout: 120000,
      sendTimeout: 120000,
      receiveTimeout: 120001,
      // headers: <String, String>{
      //   'x-rapidapi-key': EnvConfig.RAPID_API_KEY,
      //   'x-rapidapi-host': EnvConfig.RAPID_API_HOST,
      // },
    );

    options = newOptions;
    interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
      ),
    );

    httpClientAdapter = DefaultHttpClientAdapter();
  }
}
