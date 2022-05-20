import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';
import 'package:test_lime_commerce/core/utils/dartz_extension.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/domain/repositories/product_repository.dart';
import 'package:test_lime_commerce/features/product/domain/usecases/delete_saved_product.dart';

import '../repositories/mock_product_repository.dart';

void main() {
  late DeleteSavedProduct systemUnderTest;
  late ProductRepostiory productRepostiory;
  late Product product;

  setUp(() {
    productRepostiory = MockProductRepository();
    product = const Product(
      id: 1,
      title: 'title',
      description: 'description',
      price: 0,
      discountPercentage: 0,
      rating: 0,
      stock: 0,
      brand: 'brand',
      category: 'category',
      thumbnail: 'thumbnail',
      images: [],
    );
    systemUnderTest = DeleteSavedProduct(productRepostiory);
  });

  group('Delete saved product use case', () {
    test(
      'Return unit when success',
      () async {
        // arrange
        when(
          () => productRepostiory.deleteSavedProduct(product),
        ).thenAnswer((_) async => right(unit));
        // act
        final result = await systemUnderTest(SavedProductParams(product));
        final data = result.unwrapRight();
        // assert
        verify(
          () => productRepostiory.deleteSavedProduct(product),
        ).called(1);
        expect(result.isRight(), true);
        expect(data != null, true);
        expect(data is Unit, true);
      },
    );

    test(
      'Return failure when failed',
      () async {
        // arrange
        when(
          () => productRepostiory.deleteSavedProduct(product),
        ).thenAnswer(
          (_) async =>
              left(const Failure.localFailure(message: 'Failed delete data')),
        );
        // act
        final result = await systemUnderTest(SavedProductParams(product));
        final data = result.unwrapRight();
        final failure = result.getLeft();
        // assert
        verify(
          () => productRepostiory.deleteSavedProduct(product),
        ).called(1);
        expect(result.isLeft(), true);
        expect(data, null);
        expect(failure is LocalFailure, true);
      },
    );
  });
}
