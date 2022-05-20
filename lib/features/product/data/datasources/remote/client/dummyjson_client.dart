import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_lime_commerce/features/product/data/models/responses/res_product.dart';

part 'dummyjson_client.g.dart';

@lazySingleton
@RestApi(baseUrl: 'https://dummyjson.com/')
abstract class DummyJsonClient {
  @factoryMethod
  factory DummyJsonClient(Dio dio) = _DummyJsonClient;

  @GET('products')
  Future<ResProduct> fetchProducts([
    @Query('limit') int limit = 10,
    @Query('skip') int skip = 10,
  ]);
}
