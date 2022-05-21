import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';
import 'package:test_lime_commerce/features/product/data/datasources/local/product_local_data_source.dart';
import 'package:test_lime_commerce/features/product/data/datasources/remote/product_remote_data_source.dart';
import 'package:test_lime_commerce/features/product/data/models/dao/product_model_dao.dart';
import 'package:test_lime_commerce/features/product/data/models/responses/res_product.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/domain/repositories/product_repository.dart';

@LazySingleton(as: ProductRepostiory)
class ProductRepositoryImpl implements ProductRepostiory {
  ProductRepositoryImpl(
    this._productRemoteDataSource,
    this._productLocalDataSource,
  );

  final ProductRemoteDataSource _productRemoteDataSource;
  final ProductLocalDataSource _productLocalDataSource;

  @override
  Future<Either<Failure, List<Product>>> fetchProducts(int limit) async {
    return _productRemoteDataSource.fetchProducts(limit).then(
      (value) async {
        final savedProducts = await _productLocalDataSource.getSavedProducts();
        log('>> LOCAL PRODUCTS $savedProducts');

        final products = <Product>[];

        value.map((r) {
          products.addAll(r.toDomain());
        });

        savedProducts?.forEach((element) {
          final a = products.indexWhere(
            (e) => e.id == element.productId,
          );

          products[a] = products[a].copyWith(isFavorite: true);
        });

        return right(products);
      },
    );
  }

  @override
  Future<Either<Failure, Unit>> saveProduct(Product product) async {
    try {
      final result = await _productLocalDataSource.insertProduct(
        ProductModelDao(
          productId: product.id,
          title: product.title,
        ),
      );

      if (result > 0) return right(unit);
      return left(const Failure.localFailure(message: 'Failed add favorite'));
    } catch (e) {
      return left(Failure.localFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteSavedProduct(Product product) async {
    try {
      await _productLocalDataSource.deleteItemProduct(
        ProductModelDao(
          productId: product.id,
          title: product.title,
        ),
      );
      return right(unit);
    } catch (e) {
      log('> ${e.toString()}');
      return left(Failure.localFailure(message: e.toString()));
    }
  }
}
