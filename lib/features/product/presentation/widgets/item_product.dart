import 'package:flutter/material.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/amount.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/discount.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/favorite.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/image_url.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/title_product.dart';
import 'package:test_lime_commerce/shared/widgets/rating_bar.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
                color: Colors.black26,
              ),
            ],
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageUrl(
                    imageUrl: product.thumbnail,
                  ),
                  TitleProduct(
                    title: product.title,
                  ),
                  Amount(
                    price: product.price,
                    disc: product.discountPercentage,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      left: 5,
                      right: 5,
                      bottom: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBarCustom(rating: product.rating),
                        const FavoriteButton(isFavorite: true),
                      ],
                    ),
                  ),
                ],
              ),
              Discount(discount: product.discountPercentage),
            ],
          ),
        ),
      ],
    );
  }
}
