import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';
import 'package:test_lime_commerce/core/utils/dartz_extension.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/domain/repositories/product_repository.dart';
import 'package:test_lime_commerce/features/product/domain/usecases/save_product.dart';

import '../repositories/mock_product_repository.dart';

void main() {
  late SaveProduct systemUnderTest;
  late ProductRepostiory productRepository;
  late Product product;

  setUp(() {
    productRepository = MockProductRepository();
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
    systemUnderTest = SaveProduct(productRepository);
  });

  group('Save Product use case', () {
    test(
      'return unit when success',
      () async {
        // arrange
        when(
          () => productRepository.saveProduct(product),
        ).thenAnswer((_) async => right(unit));
        // act
        final result = await systemUnderTest(SaveProductParams(product));
        final data = result.unwrapRight();
        // assert
        verify(
          () => productRepository.saveProduct(product),
        ).called(1);
        expect(result.isRight(), true);
        expect(data != null, true);
        expect(data is Unit, true);
      },
    );

    test(
      'return failure when failed',
      () async {
        // arrange
        when(
          () => productRepository.saveProduct(product),
        ).thenAnswer(
          (_) async =>
              left(const Failure.localFailure(message: 'Failed get data')),
        );
        // act
        final result = await systemUnderTest(SaveProductParams(product));
        final data = result.unwrapRight();
        final failure = result.getLeft();
        // assert
        verify(
          () => productRepository.saveProduct(product),
        ).called(1);
        expect(result.isLeft(), true);
        expect(data, null);
        expect(failure is LocalFailure, true);
      },
    );
  });
}
