import 'package:flutter/material.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/amount.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/discount.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/favorite.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/image_url.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/title_product.dart';
import 'package:test_lime_commerce/widgets/rating_bar.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({Key? key}) : super(key: key);

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
                  const ImageUrl(
                    imageUrl:
                        'https://dummyjson.com/image/i/products/11/thumbnail.jpg',
                  ),
                  const TitleProduct(
                    title: 'Makeup Wedding pengantin dan keluarga',
                  ),
                  const Amount(
                    price: 15,
                    disc: 10,
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
                      children: const [
                        RatingBarCustom(rating: 3.2),
                        FavoriteButton(isFavorite: true),
                      ],
                    ),
                  ),
                ],
              ),
              const Discount(discount: 15),
            ],
          ),
        ),
      ],
    );
  }
}
