// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductEventTearOff {
  const _$ProductEventTearOff();

  _FetchProductsEvent fetchProduct(int limit) {
    return _FetchProductsEvent(
      limit,
    );
  }

  _SaveFavoriteEvent saveFavorite(Product product) {
    return _SaveFavoriteEvent(
      product,
    );
  }

  _DeleteFavoriteEvent deleteFavorite(Product product) {
    return _DeleteFavoriteEvent(
      product,
    );
  }
}

/// @nodoc
const $ProductEvent = _$ProductEventTearOff();

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) fetchProduct,
    required TResult Function(Product product) saveFavorite,
    required TResult Function(Product product) deleteFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    TResult Function(Product product)? saveFavorite,
    TResult Function(Product product)? deleteFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    TResult Function(Product product)? saveFavorite,
    TResult Function(Product product)? deleteFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductsEvent value) fetchProduct,
    required TResult Function(_SaveFavoriteEvent value) saveFavorite,
    required TResult Function(_DeleteFavoriteEvent value) deleteFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    TResult Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult Function(_DeleteFavoriteEvent value)? deleteFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    TResult Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult Function(_DeleteFavoriteEvent value)? deleteFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class _$FetchProductsEventCopyWith<$Res> {
  factory _$FetchProductsEventCopyWith(
          _FetchProductsEvent value, $Res Function(_FetchProductsEvent) then) =
      __$FetchProductsEventCopyWithImpl<$Res>;
  $Res call({int limit});
}

/// @nodoc
class __$FetchProductsEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$FetchProductsEventCopyWith<$Res> {
  __$FetchProductsEventCopyWithImpl(
      _FetchProductsEvent _value, $Res Function(_FetchProductsEvent) _then)
      : super(_value, (v) => _then(v as _FetchProductsEvent));

  @override
  _FetchProductsEvent get _value => super._value as _FetchProductsEvent;

  @override
  $Res call({
    Object? limit = freezed,
  }) {
    return _then(_FetchProductsEvent(
      limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchProductsEvent implements _FetchProductsEvent {
  const _$_FetchProductsEvent(this.limit);

  @override
  final int limit;

  @override
  String toString() {
    return 'ProductEvent.fetchProduct(limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchProductsEvent &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  _$FetchProductsEventCopyWith<_FetchProductsEvent> get copyWith =>
      __$FetchProductsEventCopyWithImpl<_FetchProductsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) fetchProduct,
    required TResult Function(Product product) saveFavorite,
    required TResult Function(Product product) deleteFavorite,
  }) {
    return fetchProduct(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    TResult Function(Product product)? saveFavorite,
    TResult Function(Product product)? deleteFavorite,
  }) {
    return fetchProduct?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    TResult Function(Product product)? saveFavorite,
    TResult Function(Product product)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductsEvent value) fetchProduct,
    required TResult Function(_SaveFavoriteEvent value) saveFavorite,
    required TResult Function(_DeleteFavoriteEvent value) deleteFavorite,
  }) {
    return fetchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    TResult Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult Function(_DeleteFavoriteEvent value)? deleteFavorite,
  }) {
    return fetchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    TResult Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult Function(_DeleteFavoriteEvent value)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct(this);
    }
    return orElse();
  }
}

abstract class _FetchProductsEvent implements ProductEvent {
  const factory _FetchProductsEvent(int limit) = _$_FetchProductsEvent;

  int get limit;
  @JsonKey(ignore: true)
  _$FetchProductsEventCopyWith<_FetchProductsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveFavoriteEventCopyWith<$Res> {
  factory _$SaveFavoriteEventCopyWith(
          _SaveFavoriteEvent value, $Res Function(_SaveFavoriteEvent) then) =
      __$SaveFavoriteEventCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$SaveFavoriteEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$SaveFavoriteEventCopyWith<$Res> {
  __$SaveFavoriteEventCopyWithImpl(
      _SaveFavoriteEvent _value, $Res Function(_SaveFavoriteEvent) _then)
      : super(_value, (v) => _then(v as _SaveFavoriteEvent));

  @override
  _SaveFavoriteEvent get _value => super._value as _SaveFavoriteEvent;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_SaveFavoriteEvent(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_SaveFavoriteEvent implements _SaveFavoriteEvent {
  const _$_SaveFavoriteEvent(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductEvent.saveFavorite(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveFavoriteEvent &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$SaveFavoriteEventCopyWith<_SaveFavoriteEvent> get copyWith =>
      __$SaveFavoriteEventCopyWithImpl<_SaveFavoriteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) fetchProduct,
    required TResult Function(Product product) saveFavorite,
    required TResult Function(Product product) deleteFavorite,
  }) {
    return saveFavorite(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    TResult Function(Product product)? saveFavorite,
    TResult Function(Product product)? deleteFavorite,
  }) {
    return saveFavorite?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    TResult Function(Product product)? saveFavorite,
    TResult Function(Product product)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (saveFavorite != null) {
      return saveFavorite(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductsEvent value) fetchProduct,
    required TResult Function(_SaveFavoriteEvent value) saveFavorite,
    required TResult Function(_DeleteFavoriteEvent value) deleteFavorite,
  }) {
    return saveFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    TResult Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult Function(_DeleteFavoriteEvent value)? deleteFavorite,
  }) {
    return saveFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    TResult Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult Function(_DeleteFavoriteEvent value)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (saveFavorite != null) {
      return saveFavorite(this);
    }
    return orElse();
  }
}

abstract class _SaveFavoriteEvent implements ProductEvent {
  const factory _SaveFavoriteEvent(Product product) = _$_SaveFavoriteEvent;

  Product get product;
  @JsonKey(ignore: true)
  _$SaveFavoriteEventCopyWith<_SaveFavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteFavoriteEventCopyWith<$Res> {
  factory _$DeleteFavoriteEventCopyWith(_DeleteFavoriteEvent value,
          $Res Function(_DeleteFavoriteEvent) then) =
      __$DeleteFavoriteEventCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$DeleteFavoriteEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$DeleteFavoriteEventCopyWith<$Res> {
  __$DeleteFavoriteEventCopyWithImpl(
      _DeleteFavoriteEvent _value, $Res Function(_DeleteFavoriteEvent) _then)
      : super(_value, (v) => _then(v as _DeleteFavoriteEvent));

  @override
  _DeleteFavoriteEvent get _value => super._value as _DeleteFavoriteEvent;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_DeleteFavoriteEvent(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_DeleteFavoriteEvent implements _DeleteFavoriteEvent {
  const _$_DeleteFavoriteEvent(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductEvent.deleteFavorite(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteFavoriteEvent &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$DeleteFavoriteEventCopyWith<_DeleteFavoriteEvent> get copyWith =>
      __$DeleteFavoriteEventCopyWithImpl<_DeleteFavoriteEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) fetchProduct,
    required TResult Function(Product product) saveFavorite,
    required TResult Function(Product product) deleteFavorite,
  }) {
    return deleteFavorite(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    TResult Function(Product product)? saveFavorite,
    TResult Function(Product product)? deleteFavorite,
  }) {
    return deleteFavorite?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    TResult Function(Product product)? saveFavorite,
    TResult Function(Product product)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (deleteFavorite != null) {
      return deleteFavorite(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductsEvent value) fetchProduct,
    required TResult Function(_SaveFavoriteEvent value) saveFavorite,
    required TResult Function(_DeleteFavoriteEvent value) deleteFavorite,
  }) {
    return deleteFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    TResult Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult Function(_DeleteFavoriteEvent value)? deleteFavorite,
  }) {
    return deleteFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    TResult Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult Function(_DeleteFavoriteEvent value)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (deleteFavorite != null) {
      return deleteFavorite(this);
    }
    return orElse();
  }
}

abstract class _DeleteFavoriteEvent implements ProductEvent {
  const factory _DeleteFavoriteEvent(Product product) = _$_DeleteFavoriteEvent;

  Product get product;
  @JsonKey(ignore: true)
  _$DeleteFavoriteEventCopyWith<_DeleteFavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  _ProductState call(
      {required Option<Either<Failure, List<Product>>> productOrFailureOption,
      required bool isLoading,
      required bool isLoadMore,
      required Option<Either<String, String>> successOrFailureMessage}) {
    return _ProductState(
      productOrFailureOption: productOrFailureOption,
      isLoading: isLoading,
      isLoadMore: isLoadMore,
      successOrFailureMessage: successOrFailureMessage,
    );
  }
}

/// @nodoc
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  Option<Either<Failure, List<Product>>> get productOrFailureOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadMore => throw _privateConstructorUsedError;
  Option<Either<String, String>> get successOrFailureMessage =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<Failure, List<Product>>> productOrFailureOption,
      bool isLoading,
      bool isLoadMore,
      Option<Either<String, String>> successOrFailureMessage});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;

  @override
  $Res call({
    Object? productOrFailureOption = freezed,
    Object? isLoading = freezed,
    Object? isLoadMore = freezed,
    Object? successOrFailureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      productOrFailureOption: productOrFailureOption == freezed
          ? _value.productOrFailureOption
          : productOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Product>>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMore: isLoadMore == freezed
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFailureMessage: successOrFailureMessage == freezed
          ? _value.successOrFailureMessage
          : successOrFailureMessage // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, String>>,
    ));
  }
}

/// @nodoc
abstract class _$ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(
          _ProductState value, $Res Function(_ProductState) then) =
      __$ProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, List<Product>>> productOrFailureOption,
      bool isLoading,
      bool isLoadMore,
      Option<Either<String, String>> successOrFailureMessage});
}

/// @nodoc
class __$ProductStateCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(
      _ProductState _value, $Res Function(_ProductState) _then)
      : super(_value, (v) => _then(v as _ProductState));

  @override
  _ProductState get _value => super._value as _ProductState;

  @override
  $Res call({
    Object? productOrFailureOption = freezed,
    Object? isLoading = freezed,
    Object? isLoadMore = freezed,
    Object? successOrFailureMessage = freezed,
  }) {
    return _then(_ProductState(
      productOrFailureOption: productOrFailureOption == freezed
          ? _value.productOrFailureOption
          : productOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Product>>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMore: isLoadMore == freezed
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFailureMessage: successOrFailureMessage == freezed
          ? _value.successOrFailureMessage
          : successOrFailureMessage // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, String>>,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {required this.productOrFailureOption,
      required this.isLoading,
      required this.isLoadMore,
      required this.successOrFailureMessage});

  @override
  final Option<Either<Failure, List<Product>>> productOrFailureOption;
  @override
  final bool isLoading;
  @override
  final bool isLoadMore;
  @override
  final Option<Either<String, String>> successOrFailureMessage;

  @override
  String toString() {
    return 'ProductState(productOrFailureOption: $productOrFailureOption, isLoading: $isLoading, isLoadMore: $isLoadMore, successOrFailureMessage: $successOrFailureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductState &&
            const DeepCollectionEquality()
                .equals(other.productOrFailureOption, productOrFailureOption) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isLoadMore, isLoadMore) &&
            const DeepCollectionEquality().equals(
                other.successOrFailureMessage, successOrFailureMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productOrFailureOption),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isLoadMore),
      const DeepCollectionEquality().hash(successOrFailureMessage));

  @JsonKey(ignore: true)
  @override
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {required Option<Either<Failure, List<Product>>> productOrFailureOption,
      required bool isLoading,
      required bool isLoadMore,
      required Option<Either<String, String>>
          successOrFailureMessage}) = _$_ProductState;

  @override
  Option<Either<Failure, List<Product>>> get productOrFailureOption;
  @override
  bool get isLoading;
  @override
  bool get isLoadMore;
  @override
  Option<Either<String, String>> get successOrFailureMessage;
  @override
  @JsonKey(ignore: true)
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
