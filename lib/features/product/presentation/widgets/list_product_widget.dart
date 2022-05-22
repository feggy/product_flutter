import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/presentation/bloc/product_bloc.dart';
import 'package:test_lime_commerce/features/product/presentation/widgets/item_product.dart';
import 'package:test_lime_commerce/injector.dart';
import 'package:test_lime_commerce/shared/widgets/shimmer_square_widget.dart';

class ListProductWidget extends StatefulWidget {
  const ListProductWidget({Key? key}) : super(key: key);

  @override
  State<ListProductWidget> createState() => _ListProductWidgetState();
}

class _ListProductWidgetState extends State<ListProductWidget> {
  int limitProduct = 10;
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
                  limitProduct += 10;
                });
                products
                  ..clear()
                  ..addAll(r);
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
                    context.read<ProductBloc>().add(
                          ProductEvent.loadMore(
                            limitProduct + 10,
                          ),
                        );

                    return const ShimmerSquareWidget(
                      width: double.infinity,
                      height: 100,
                    );
                  } else {
                    return ItemProduct(
                      product: products[index],
                    );
                  }
                },
                itemCount: products.length != 90
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
