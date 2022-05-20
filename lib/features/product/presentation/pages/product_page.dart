import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/presentation/bloc/product_bloc.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/item_product.dart';
import 'package:test_lime_commerce/injector.dart';

class ProductPage extends HookWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productList = useState(<Product>[]);
    return BlocProvider(
      create: (context) => getIt<ProductBloc>()
        ..add(
          const ProductEvent.fetchProduct(10),
        ),
      child: BlocListener<ProductBloc, ProductState>(
        listener: (context, state) {
          state.productOrFailureOption.fold(
            () => null,
            (either) => either.fold(
              (failure) => failure.when(
                localFailure: (message) {},
                serverFailure: (message) {},
              ),
              (r) {
                productList.value = r;
              },
            ),
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('List Product'),
          ),
          backgroundColor: Colors.white,
          body: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              } else {
                return GridView.count(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  childAspectRatio:
                      MediaQuery.of(context).size.aspectRatio * 1.5,
                  children: List.generate(
                    productList.value.length,
                    (index) => ItemProduct(product: productList.value[index]),
                  ).toList(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
