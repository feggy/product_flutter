import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';
import 'package:test_lime_commerce/core/domain/use_case.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/domain/repositories/product_repository.dart';

@injectable
class FetchProducts extends UseCase<List<Product>, FetchProductsParams> {
  FetchProducts(this._repository);

  final ProductRepostiory _repository;

  @override
  Future<Either<Failure, List<Product>>> call(
    FetchProductsParams params,
  ) async {
    return _repository.fetchProducts(params.limit);
  }
}

class FetchProductsParams {
  FetchProductsParams(this.limit);

  final int limit;
}
