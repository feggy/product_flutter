import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/presentation/bloc/product_bloc.dart';

class FavoriteButtonWidget extends StatefulWidget {
  const FavoriteButtonWidget({
    Key? key,
    required this.product,
    required this.isFavorite,
  }) : super(key: key);

  final Product product;
  final bool isFavorite;

  @override
  State<FavoriteButtonWidget> createState() => _FavoriteButtonWidgetState();
}

class _FavoriteButtonWidgetState extends State<FavoriteButtonWidget> {
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
