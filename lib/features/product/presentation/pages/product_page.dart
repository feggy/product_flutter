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
    final limitProduct = useState(10);
    final _scrollController = ScrollController();

    return BlocProvider(
      create: (context) => getIt<ProductBloc>()
        ..add(
          ProductEvent.fetchProduct(limitProduct.value),
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
          state.successOrFailureMessage.fold(
            () => null,
            (either) => either.fold(
              (l) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(l),
                  backgroundColor: Colors.black45,
                ),
              ),
              (r) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(r),
                  backgroundColor: Colors.black45,
                ),
              ),
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
                return Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 20,
                        ),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio:
                              MediaQuery.of(context).size.aspectRatio * 1.5,
                        ),
                        itemBuilder: (ctx, index) {
                          return ItemProduct(product: productList.value[index]);
                        },
                        controller: _scrollController,
                        itemCount: productList.value.length,
                      ),
                    ),
                    Visibility(
                      visible: state.isLoadMore,
                      child: const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
