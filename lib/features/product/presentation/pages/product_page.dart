import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/list_product_widget.dart';

class ProductPage extends HookWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Product'),
      ),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: ListProductWidget(),
      ),
    );
  }
}
