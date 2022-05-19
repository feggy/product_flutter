import 'package:dartz/dartz.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';
import 'package:test_lime_commerce/core/domain/use_case.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/domain/repositories/product_repository.dart';

class FetchProduct extends UseCase<List<Product>, NoParam> {
  FetchProduct(this.repository);

  final ProductRepostiory repository;

  @override
  Future<Either<Failure, List<Product>>> call(NoParam params) async {
    return repository.fetchListProduct();
  }
}
