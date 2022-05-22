import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';

part 'res_product.freezed.dart';
part 'res_product.g.dart';

@freezed
class ResProduct with _$ResProduct {
  const factory ResProduct({
    required List<ProductModel> products,
    required int total,
    required dynamic skip,
    required int limit,
  }) = _ResProduct;
  factory ResProduct.fromJson(Map<String, dynamic> json) =>
      _$ResProductFromJson(json);
}

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String title,
    required String description,
    required int price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required String brand,
    required String category,
    required String thumbnail,
    required List<String> images,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

extension ResProductX on ResProduct {
  List<Product> toDomain() => products
      .map(
        (e) => Product(
          id: e.id,
          title: e.title,
          description: e.description,
          price: e.price,
          discountPercentage: e.discountPercentage,
          rating: e.rating,
          stock: e.stock,
          brand: e.brand,
          category: e.category,
          thumbnail: e.thumbnail,
          images: e.images,
        ),
      )
      .toList();
}
