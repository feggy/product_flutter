// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) fetchProduct,
    required TResult Function(int limit) loadMore,
    required TResult Function(Product product) saveFavorite,
    required TResult Function(Product product) deleteFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? fetchProduct,
    TResult? Function(int limit)? loadMore,
    TResult? Function(Product product)? saveFavorite,
    TResult? Function(Product product)? deleteFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    TResult Function(int limit)? loadMore,
    TResult Function(Product product)? saveFavorite,
    TResult Function(Product product)? deleteFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductsEvent value) fetchProduct,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SaveFavoriteEvent value) saveFavorite,
    required TResult Function(_DeleteFavoriteEvent value) deleteFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductsEvent value)? fetchProduct,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult? Function(_DeleteFavoriteEvent value)? deleteFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    TResult Function(_LoadMoreEvent value)? loadMore,
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
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchProductsEventImplCopyWith<$Res> {
  factory _$$FetchProductsEventImplCopyWith(_$FetchProductsEventImpl value,
          $Res Function(_$FetchProductsEventImpl) then) =
      __$$FetchProductsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit});
}

/// @nodoc
class __$$FetchProductsEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FetchProductsEventImpl>
    implements _$$FetchProductsEventImplCopyWith<$Res> {
  __$$FetchProductsEventImplCopyWithImpl(_$FetchProductsEventImpl _value,
      $Res Function(_$FetchProductsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(_$FetchProductsEventImpl(
      null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchProductsEventImpl implements _FetchProductsEvent {
  const _$FetchProductsEventImpl(this.limit);

  @override
  final int limit;

  @override
  String toString() {
    return 'ProductEvent.fetchProduct(limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductsEventImpl &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProductsEventImplCopyWith<_$FetchProductsEventImpl> get copyWith =>
      __$$FetchProductsEventImplCopyWithImpl<_$FetchProductsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) fetchProduct,
    required TResult Function(int limit) loadMore,
    required TResult Function(Product product) saveFavorite,
    required TResult Function(Product product) deleteFavorite,
  }) {
    return fetchProduct(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? fetchProduct,
    TResult? Function(int limit)? loadMore,
    TResult? Function(Product product)? saveFavorite,
    TResult? Function(Product product)? deleteFavorite,
  }) {
    return fetchProduct?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    TResult Function(int limit)? loadMore,
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
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SaveFavoriteEvent value) saveFavorite,
    required TResult Function(_DeleteFavoriteEvent value) deleteFavorite,
  }) {
    return fetchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductsEvent value)? fetchProduct,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult? Function(_DeleteFavoriteEvent value)? deleteFavorite,
  }) {
    return fetchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    TResult Function(_LoadMoreEvent value)? loadMore,
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
  const factory _FetchProductsEvent(final int limit) = _$FetchProductsEventImpl;

  int get limit;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchProductsEventImplCopyWith<_$FetchProductsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreEventImplCopyWith<$Res> {
  factory _$$LoadMoreEventImplCopyWith(
          _$LoadMoreEventImpl value, $Res Function(_$LoadMoreEventImpl) then) =
      __$$LoadMoreEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit});
}

/// @nodoc
class __$$LoadMoreEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$LoadMoreEventImpl>
    implements _$$LoadMoreEventImplCopyWith<$Res> {
  __$$LoadMoreEventImplCopyWithImpl(
      _$LoadMoreEventImpl _value, $Res Function(_$LoadMoreEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(_$LoadMoreEventImpl(
      null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadMoreEventImpl implements _LoadMoreEvent {
  const _$LoadMoreEventImpl(this.limit);

  @override
  final int limit;

  @override
  String toString() {
    return 'ProductEvent.loadMore(limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreEventImpl &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreEventImplCopyWith<_$LoadMoreEventImpl> get copyWith =>
      __$$LoadMoreEventImplCopyWithImpl<_$LoadMoreEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) fetchProduct,
    required TResult Function(int limit) loadMore,
    required TResult Function(Product product) saveFavorite,
    required TResult Function(Product product) deleteFavorite,
  }) {
    return loadMore(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? fetchProduct,
    TResult? Function(int limit)? loadMore,
    TResult? Function(Product product)? saveFavorite,
    TResult? Function(Product product)? deleteFavorite,
  }) {
    return loadMore?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    TResult Function(int limit)? loadMore,
    TResult Function(Product product)? saveFavorite,
    TResult Function(Product product)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductsEvent value) fetchProduct,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SaveFavoriteEvent value) saveFavorite,
    required TResult Function(_DeleteFavoriteEvent value) deleteFavorite,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductsEvent value)? fetchProduct,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult? Function(_DeleteFavoriteEvent value)? deleteFavorite,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult Function(_DeleteFavoriteEvent value)? deleteFavorite,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreEvent implements ProductEvent {
  const factory _LoadMoreEvent(final int limit) = _$LoadMoreEventImpl;

  int get limit;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMoreEventImplCopyWith<_$LoadMoreEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveFavoriteEventImplCopyWith<$Res> {
  factory _$$SaveFavoriteEventImplCopyWith(_$SaveFavoriteEventImpl value,
          $Res Function(_$SaveFavoriteEventImpl) then) =
      __$$SaveFavoriteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$SaveFavoriteEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SaveFavoriteEventImpl>
    implements _$$SaveFavoriteEventImplCopyWith<$Res> {
  __$$SaveFavoriteEventImplCopyWithImpl(_$SaveFavoriteEventImpl _value,
      $Res Function(_$SaveFavoriteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$SaveFavoriteEventImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$SaveFavoriteEventImpl implements _SaveFavoriteEvent {
  const _$SaveFavoriteEventImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductEvent.saveFavorite(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFavoriteEventImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveFavoriteEventImplCopyWith<_$SaveFavoriteEventImpl> get copyWith =>
      __$$SaveFavoriteEventImplCopyWithImpl<_$SaveFavoriteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) fetchProduct,
    required TResult Function(int limit) loadMore,
    required TResult Function(Product product) saveFavorite,
    required TResult Function(Product product) deleteFavorite,
  }) {
    return saveFavorite(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? fetchProduct,
    TResult? Function(int limit)? loadMore,
    TResult? Function(Product product)? saveFavorite,
    TResult? Function(Product product)? deleteFavorite,
  }) {
    return saveFavorite?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    TResult Function(int limit)? loadMore,
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
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SaveFavoriteEvent value) saveFavorite,
    required TResult Function(_DeleteFavoriteEvent value) deleteFavorite,
  }) {
    return saveFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductsEvent value)? fetchProduct,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult? Function(_DeleteFavoriteEvent value)? deleteFavorite,
  }) {
    return saveFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    TResult Function(_LoadMoreEvent value)? loadMore,
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
  const factory _SaveFavoriteEvent(final Product product) =
      _$SaveFavoriteEventImpl;

  Product get product;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveFavoriteEventImplCopyWith<_$SaveFavoriteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFavoriteEventImplCopyWith<$Res> {
  factory _$$DeleteFavoriteEventImplCopyWith(_$DeleteFavoriteEventImpl value,
          $Res Function(_$DeleteFavoriteEventImpl) then) =
      __$$DeleteFavoriteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$DeleteFavoriteEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$DeleteFavoriteEventImpl>
    implements _$$DeleteFavoriteEventImplCopyWith<$Res> {
  __$$DeleteFavoriteEventImplCopyWithImpl(_$DeleteFavoriteEventImpl _value,
      $Res Function(_$DeleteFavoriteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$DeleteFavoriteEventImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$DeleteFavoriteEventImpl implements _DeleteFavoriteEvent {
  const _$DeleteFavoriteEventImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductEvent.deleteFavorite(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFavoriteEventImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFavoriteEventImplCopyWith<_$DeleteFavoriteEventImpl> get copyWith =>
      __$$DeleteFavoriteEventImplCopyWithImpl<_$DeleteFavoriteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) fetchProduct,
    required TResult Function(int limit) loadMore,
    required TResult Function(Product product) saveFavorite,
    required TResult Function(Product product) deleteFavorite,
  }) {
    return deleteFavorite(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? fetchProduct,
    TResult? Function(int limit)? loadMore,
    TResult? Function(Product product)? saveFavorite,
    TResult? Function(Product product)? deleteFavorite,
  }) {
    return deleteFavorite?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    TResult Function(int limit)? loadMore,
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
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SaveFavoriteEvent value) saveFavorite,
    required TResult Function(_DeleteFavoriteEvent value) deleteFavorite,
  }) {
    return deleteFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProductsEvent value)? fetchProduct,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SaveFavoriteEvent value)? saveFavorite,
    TResult? Function(_DeleteFavoriteEvent value)? deleteFavorite,
  }) {
    return deleteFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    TResult Function(_LoadMoreEvent value)? loadMore,
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
  const factory _DeleteFavoriteEvent(final Product product) =
      _$DeleteFavoriteEventImpl;

  Product get product;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFavoriteEventImplCopyWith<_$DeleteFavoriteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  Option<Either<Failure, DataProduct>> get productOrFailureOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadMore => throw _privateConstructorUsedError;
  Option<Either<String, String>> get successOrFailureMessage =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {Option<Either<Failure, DataProduct>> productOrFailureOption,
      bool isLoading,
      bool isLoadMore,
      Option<Either<String, String>> successOrFailureMessage});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productOrFailureOption = null,
    Object? isLoading = null,
    Object? isLoadMore = null,
    Object? successOrFailureMessage = null,
  }) {
    return _then(_value.copyWith(
      productOrFailureOption: null == productOrFailureOption
          ? _value.productOrFailureOption
          : productOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, DataProduct>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFailureMessage: null == successOrFailureMessage
          ? _value.successOrFailureMessage
          : successOrFailureMessage // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<Failure, DataProduct>> productOrFailureOption,
      bool isLoading,
      bool isLoadMore,
      Option<Either<String, String>> successOrFailureMessage});
}

/// @nodoc
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productOrFailureOption = null,
    Object? isLoading = null,
    Object? isLoadMore = null,
    Object? successOrFailureMessage = null,
  }) {
    return _then(_$ProductStateImpl(
      productOrFailureOption: null == productOrFailureOption
          ? _value.productOrFailureOption
          : productOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, DataProduct>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFailureMessage: null == successOrFailureMessage
          ? _value.successOrFailureMessage
          : successOrFailureMessage // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, String>>,
    ));
  }
}

/// @nodoc

class _$ProductStateImpl implements _ProductState {
  const _$ProductStateImpl(
      {required this.productOrFailureOption,
      required this.isLoading,
      required this.isLoadMore,
      required this.successOrFailureMessage});

  @override
  final Option<Either<Failure, DataProduct>> productOrFailureOption;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
            (identical(other.productOrFailureOption, productOrFailureOption) ||
                other.productOrFailureOption == productOrFailureOption) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadMore, isLoadMore) ||
                other.isLoadMore == isLoadMore) &&
            (identical(
                    other.successOrFailureMessage, successOrFailureMessage) ||
                other.successOrFailureMessage == successOrFailureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productOrFailureOption,
      isLoading, isLoadMore, successOrFailureMessage);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {required final Option<Either<Failure, DataProduct>>
          productOrFailureOption,
      required final bool isLoading,
      required final bool isLoadMore,
      required final Option<Either<String, String>>
          successOrFailureMessage}) = _$ProductStateImpl;

  @override
  Option<Either<Failure, DataProduct>> get productOrFailureOption;
  @override
  bool get isLoading;
  @override
  bool get isLoadMore;
  @override
  Option<Either<String, String>> get successOrFailureMessage;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
