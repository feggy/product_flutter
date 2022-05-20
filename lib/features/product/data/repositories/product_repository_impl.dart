import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';
import 'package:test_lime_commerce/features/product/data/datasources/remote/product_remote_datasource.dart';
import 'package:test_lime_commerce/features/product/data/models/responses/res_product.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/domain/repositories/product_repository.dart';

@LazySingleton(as: ProductRepostiory)
class ProductRepositoryImpl implements ProductRepostiory {
  ProductRepositoryImpl(this._remoteDataSource);
  final ProductRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, Unit>> deleteSavedProduct(Product product) {
    // TODO: implement deleteSavedProduct
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Product>>> fetchProducts(int limit) {
    return _remoteDataSource.fetchProducts(limit).then(
          (value) => value.map(
            (r) => r.toDomain(),
          ),
        );
  }

  @override
  Future<Either<Failure, List<Product>>> getSavedProduct() {
    // TODO: implement getSavedProduct
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> saveProduct(Product product) {
    // TODO: implement saveProduct
    throw UnimplementedError();
  }
}
