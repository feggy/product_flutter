import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';
import 'package:test_lime_commerce/core/domain/use_case.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/domain/repositories/product_repository.dart';

class SaveProduct extends UseCase<Unit, SaveProductParams> {
  SaveProduct(this.repository);

  final ProductRepostiory repository;

  @override
  Future<Either<Failure, Unit>> call(SaveProductParams params) {
    return repository.saveProduct(params.product);
  }
}

@immutable
class SaveProductParams {
  const SaveProductParams(
    this.product,
  );

  final Product product;

  SaveProductParams copyWith({
    Product? product,
  }) {
    return SaveProductParams(
      product ?? this.product,
    );
  }

  @override
  String toString() => 'SaveProductParams(product: $product)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SaveProductParams && other.product == product;
  }

  @override
  int get hashCode => product.hashCode;
}
