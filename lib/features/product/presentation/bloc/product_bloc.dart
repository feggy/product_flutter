import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_lime_commerce/core/domain/failures/failure.dart';
import 'package:test_lime_commerce/features/product/domain/entities/product.dart';
import 'package:test_lime_commerce/features/product/domain/usecases/delete_saved_product.dart';
import 'package:test_lime_commerce/features/product/domain/usecases/fetch_products.dart';
import 'package:test_lime_commerce/features/product/domain/usecases/save_product.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(
    this._fetchProducts,
    this._saveFavorite,
    this._deleteSavedFavorite,
  ) : super(ProductState.initial()) {
    on<_FetchProductsEvent>(_onFetchProduct);
    on<_SaveFavoriteEvent>(_onSaveFavorite);
    on<_DeleteFavoriteEvent>(_onDeleteFavorite);
    on<_LoadMoreEvent>(_onLoadMore);
  }
  final FetchProducts _fetchProducts;
  final SaveProduct _saveFavorite;
  final DeleteSavedProduct _deleteSavedFavorite;

  FutureOr<void> _onFetchProduct(
    _FetchProductsEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final data = await _fetchProducts(FetchProductsParams(event.limit));
    emit(state.copyWith(productOrFailureOption: optionOf(data)));
    emit(state.copyWith(isLoading: false, productOrFailureOption: none()));
  }

  FutureOr<void> _onLoadMore(
    _LoadMoreEvent event,
    Emitter<ProductState> emit,
  ) async {
    final data = await _fetchProducts(FetchProductsParams(event.limit + 10));
    emit(state.copyWith(productOrFailureOption: optionOf(data)));
    emit(state.copyWith(productOrFailureOption: none()));
  }

  FutureOr<void> _onSaveFavorite(
    _SaveFavoriteEvent event,
    Emitter<ProductState> emit,
  ) async {
    try {
      await _saveFavorite(SaveProductParams(event.product));
      emit(
        state.copyWith(
          successOrFailureMessage:
              optionOf(right('Berhasil menambahkan favorite')),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          successOrFailureMessage: optionOf(left('Gagal menambahkan favorite')),
        ),
      );
    }
    emit(state.copyWith(successOrFailureMessage: none()));
  }

  FutureOr<void> _onDeleteFavorite(
    _DeleteFavoriteEvent event,
    Emitter<ProductState> emit,
  ) async {
    try {
      await _deleteSavedFavorite(SavedProductParams(event.product));
      emit(
        state.copyWith(
          successOrFailureMessage:
              optionOf(right('Berhasil menghapus favorite')),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          successOrFailureMessage: optionOf(left('Gagal menghapus favorite')),
        ),
      );
    }
    emit(state.copyWith(successOrFailureMessage: none()));
  }
}
