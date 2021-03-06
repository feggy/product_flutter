import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/presentation/bloc/product_bloc.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/item_product_widget.dart';
import 'package:test_lime_commerce/injector.dart';
import 'package:test_lime_commerce/shared/widgets/shimmer_square_widget.dart';

class ListProductWidget extends StatefulWidget {
  const ListProductWidget({Key? key}) : super(key: key);

  @override
  State<ListProductWidget> createState() => _ListProductWidgetState();
}

class _ListProductWidgetState extends State<ListProductWidget> {
  int limitProduct = 20;
  int totalProduct = 0;
  List<Product> products = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProductBloc>()..add(ProductEvent.fetchProduct(limitProduct)),
      child: BlocListener<ProductBloc, ProductState>(
        listener: (context, state) {
          state.productOrFailureOption.fold(
            () => null,
            (either) => either.fold(
              (failure) =>
                  failure.when(localFailure: (msg) {}, serverFailure: (msg) {}),
              (r) {
                setState(() {
                  totalProduct = r.total;
                  limitProduct = r.limit;
                });
                products
                  ..clear()
                  ..addAll(r.products);
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
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else {
              return GridView.builder(
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
                  if (index >= products.length) {
                    context
                        .read<ProductBloc>()
                        .add(ProductEvent.loadMore(limitProduct));

                    return const ShimmerSquareWidget(
                      width: double.infinity,
                      height: 100,
                    );
                  } else {
                    return ItemProductWidget(product: products[index]);
                  }
                },
                itemCount: products.length != totalProduct
                    ? products.length + 1
                    : products.length,
              );
            }
          },
        ),
      ),
    );
  }
}
