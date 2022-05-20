import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';
import 'package:test_lime_commerce/core/domain/use_case.dart';
import 'package:test_lime_commerce/core/utils/dartz_extension.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/domain/repositories/product_repository.dart';
import 'package:test_lime_commerce/features/product/domain/usecases/fetch_saved_product.dart';

import '../repositories/mock_product_repository.dart';

void main() {
  late FetchSavedProduct systemUnderTest;
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
    systemUnderTest = FetchSavedProduct(productRepostiory);
  });

  group('Fetch saved product use case', () {
    test(
      'Return list product when success',
      () async {
        // arrange
        when(
          () => productRepostiory.getSavedProduct(),
        ).thenAnswer((_) async => right([product, product]));
        // act
        final result = await systemUnderTest(NoParams());
        final data = result.unwrapRight();
        // assert
        verify(
          () => productRepostiory.getSavedProduct(),
        ).called(1);
        expect(result.isRight(), true);
        expect(data != null, true);
        expect(data!.length > 1, true);
      },
    );

    test(
      'Return failure when failed',
      () async {
        // arrange
        when(
          () => productRepostiory.getSavedProduct(),
        ).thenAnswer(
          (_) async => left(const Failure.localFailure(message: 'Load Failed')),
        );
        // act
        final result = await systemUnderTest(NoParams());
        final data = result.unwrapRight();
        final failure = result.getLeft();
        // assert
        verify(
          () => productRepostiory.getSavedProduct(),
        ).called(1);
        expect(result.isLeft(), true);
        expect(data, null);
        expect(failure is LocalFailure, true);
      },
    );
  });
}
