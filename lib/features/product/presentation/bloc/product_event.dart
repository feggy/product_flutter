part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetchProduct(int limit) = _FetchProductsEvent;
  const factory ProductEvent.saveFavorite(Product product) = _SaveFavoriteEvent;
  const factory ProductEvent.deleteFavorite(Product product) =
      _DeleteFavoriteEvent;
}
