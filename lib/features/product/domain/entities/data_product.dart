import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';

part 'data_product.freezed.dart';

@freezed
class DataProduct with _$DataProduct {
  const factory DataProduct({
    required List<Product> products,
    required int total,
    required dynamic skip,
    required int limit,
  }) = _DataProduct;
}
