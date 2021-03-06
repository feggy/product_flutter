import 'package:flutter/material.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/amount_widget.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/discount_widget.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/favorite_button_widget.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/title_product_widget.dart';
import 'package:test_lime_commerce/shared/widgets/image_url_widget.dart';
import 'package:test_lime_commerce/shared/widgets/rating_bar_widget.dart';

class ItemProductWidget extends StatelessWidget {
  const ItemProductWidget({Key? key, required this.product}) : super(key: key);

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
                  ImageUrlWidget(
                    imageUrl: product.thumbnail,
                  ),
                  TitleProductWidget(title: product.title),
                  AmountWidget(
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
                        RatingBarWidget(rating: product.rating),
                        FavoriteButtonWidget(
                          product: product,
                          isFavorite: product.isFavorite ?? false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              DiscountWidget(discount: product.discountPercentage),
            ],
          ),
        ),
      ],
    );
  }
}
