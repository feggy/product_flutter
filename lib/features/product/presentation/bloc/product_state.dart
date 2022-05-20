part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required Option<Either<Failure, List<Product>>> productOrFailureOption,
    required bool isLoading,
    required bool isLoadMore,
  }) = _ProductState;
  factory ProductState.initial() => ProductState(
        productOrFailureOption: none(),
        isLoadMore: false,
        isLoading: false,
      );
}
