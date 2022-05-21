import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/presentation/bloc/product_bloc.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({
    Key? key,
    required this.product,
    required this.isFavorite,
  }) : super(key: key);

  final Product product;
  final bool isFavorite;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool favorite = false;

  @override
  void initState() {
    favorite = widget.isFavorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!favorite) {
          context
              .read<ProductBloc>()
              .add(ProductEvent.saveFavorite(widget.product));
        } else {
          context
              .read<ProductBloc>()
              .add(ProductEvent.deleteFavorite(widget.product));
        }

        setState(() {
          favorite = !favorite;
        });
      },
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey[100],
        ),
        child: Center(
          child: Icon(
            favorite ? Icons.favorite : Icons.favorite_outline,
            color: favorite ? Colors.red : Colors.black87,
            size: 15,
          ),
        ),
      ),
    );
  }
}
