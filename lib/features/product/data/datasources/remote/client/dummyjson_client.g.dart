// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dummyjson_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _DummyJsonClient implements DummyJsonClient {
  _DummyJsonClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://dummyjson.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ResProduct> fetchProducts([limit = 10, skip = 10]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'limit': limit, r'skip': skip};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResProduct>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'products',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResProduct.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
