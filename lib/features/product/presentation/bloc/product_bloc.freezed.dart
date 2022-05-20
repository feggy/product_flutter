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
}

/// @nodoc
const $ProductEvent = _$ProductEventTearOff();

/// @nodoc
mixin _$ProductEvent {
  int get limit => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) fetchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProductsEvent value) fetchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductEventCopyWith<ProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
  $Res call({int limit});
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;

  @override
  $Res call({
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FetchProductsEventCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$FetchProductsEventCopyWith(
          _FetchProductsEvent value, $Res Function(_FetchProductsEvent) then) =
      __$FetchProductsEventCopyWithImpl<$Res>;
  @override
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
  }) {
    return fetchProduct(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
  }) {
    return fetchProduct?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? fetchProduct,
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
  }) {
    return fetchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
  }) {
    return fetchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProductsEvent value)? fetchProduct,
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

  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$FetchProductsEventCopyWith<_FetchProductsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  _ProductState call(
      {required Option<Either<Failure, List<Product>>> productOrFailureOption,
      required bool isLoading,
      required bool isLoadMore}) {
    return _ProductState(
      productOrFailureOption: productOrFailureOption,
      isLoading: isLoading,
      isLoadMore: isLoadMore,
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
      bool isLoadMore});
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
      bool isLoadMore});
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
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {required this.productOrFailureOption,
      required this.isLoading,
      required this.isLoadMore});

  @override
  final Option<Either<Failure, List<Product>>> productOrFailureOption;
  @override
  final bool isLoading;
  @override
  final bool isLoadMore;

  @override
  String toString() {
    return 'ProductState(productOrFailureOption: $productOrFailureOption, isLoading: $isLoading, isLoadMore: $isLoadMore)';
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
                .equals(other.isLoadMore, isLoadMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productOrFailureOption),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isLoadMore));

  @JsonKey(ignore: true)
  @override
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {required Option<Either<Failure, List<Product>>> productOrFailureOption,
      required bool isLoading,
      required bool isLoadMore}) = _$_ProductState;

  @override
  Option<Either<Failure, List<Product>>> get productOrFailureOption;
  @override
  bool get isLoading;
  @override
  bool get isLoadMore;
  @override
  @JsonKey(ignore: true)
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
