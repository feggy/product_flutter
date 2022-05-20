import 'package:flutter/material.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/item_product.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Product'),
      ),
      backgroundColor: Colors.white,
      body: GridView.count(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: MediaQuery.of(context).size.aspectRatio * 1.5,
        children: List.generate(
          8,
          (index) => const ItemProduct(),
        ).toList(),
      ),
    );
  }
}
