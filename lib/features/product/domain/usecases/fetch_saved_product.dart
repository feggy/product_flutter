import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';
import 'package:test_lime_commerce/core/domain/use_case.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/domain/repositories/product_repository.dart';

@injectable
class FetchSavedProduct extends UseCase<List<Product>, NoParams> {
  FetchSavedProduct(this.repostiory);

  final ProductRepostiory repostiory;

  @override
  Future<Either<Failure, List<Product>>> call(NoParams params) {
    return repostiory.getSavedProduct();
  }
}
