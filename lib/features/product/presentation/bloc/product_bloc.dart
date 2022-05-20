import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/domain/usecases/delete_saved_product.dart';
import 'package:test_lime_commerce/features/product/domain/usecases/fetch_products.dart';
import 'package:test_lime_commerce/features/product/domain/usecases/fetch_saved_product.dart';
import 'package:test_lime_commerce/features/product/domain/usecases/save_product.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(
    this._fetchProducts,
    this._saveProduct,
    this._fetchSavedProduct,
    this._deleteSavedProduct,
  ) : super(ProductState.initial()) {
    on<_FetchProductsEvent>(_onFetchProduct);
  }
  final FetchProducts _fetchProducts;
  final SaveProduct _saveProduct;
  final FetchSavedProduct _fetchSavedProduct;
  final DeleteSavedProduct _deleteSavedProduct;

  FutureOr<void> _onFetchProduct(
    _FetchProductsEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final data = await _fetchProducts(FetchProductsParams(event.limit));
    emit(state.copyWith(productOrFailureOption: optionOf(data)));
    emit(state.copyWith(isLoading: false, productOrFailureOption: none()));
  }
}
