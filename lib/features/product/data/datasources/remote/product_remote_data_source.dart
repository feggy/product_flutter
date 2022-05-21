// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';
import 'package:test_lime_commerce/features/product/data/datasources/remote/client/dummyjson_client.dart';
import 'package:test_lime_commerce/features/product/data/models/responses/res_product.dart';

abstract class ProductRemoteDataSource {
  Future<Either<Failure, ResProduct>> fetchProducts(int limit);
}

@LazySingleton(as: ProductRemoteDataSource)
class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  ProductRemoteDataSourceImpl(this._client);

  final DummyJsonClient _client;

  @override
  Future<Either<Failure, ResProduct>> fetchProducts(int limit) async {
    try {
      final data = await _client.fetchProducts(limit);

      return right(data);
    } catch (e) {
      return left(Failure.serverFailure(message: e.toString()));
    }
  }
}
