import 'package:dartz/dartz.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';
import 'package:test_lime_commerce/features/product/domain/entities/data_product.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';

abstract class ProductRepostiory {
  Future<Either<Failure, DataProduct>> fetchProducts(int limit);
  Future<Either<Failure, Unit>> saveProduct(Product product);
  Future<Either<Failure, Unit>> deleteSavedProduct(Product product);
}
