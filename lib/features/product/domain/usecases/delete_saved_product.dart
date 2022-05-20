import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';

import 'package:test_lime_commerce/core/domain/use_case.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/domain/repositories/product_repository.dart';

@injectable
class DeleteSavedProduct extends UseCase<Unit, SavedProductParams> {
  DeleteSavedProduct(this.repostiory);

  final ProductRepostiory repostiory;

  @override
  Future<Either<Failure, Unit>> call(SavedProductParams params) {
    return repostiory.deleteSavedProduct(params.product);
  }
}

@immutable
class SavedProductParams {
  const SavedProductParams(
    this.product,
  );

  final Product product;

  SavedProductParams copyWith({
    Product? product,
  }) {
    return SavedProductParams(
      product ?? this.product,
    );
  }

  @override
  String toString() => 'SavedProductParams(product: $product)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SavedProductParams && other.product == product;
  }

  @override
  int get hashCode => product.hashCode;
}
