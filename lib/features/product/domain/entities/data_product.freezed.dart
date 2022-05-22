// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataProductTearOff {
  const _$DataProductTearOff();

  _DataProduct call(
      {required List<Product> products,
      required int total,
      required dynamic skip,
      required int limit}) {
    return _DataProduct(
      products: products,
      total: total,
      skip: skip,
      limit: limit,
    );
  }
}

/// @nodoc
const $DataProduct = _$DataProductTearOff();

/// @nodoc
mixin _$DataProduct {
  List<Product> get products => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  dynamic get skip => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataProductCopyWith<DataProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataProductCopyWith<$Res> {
  factory $DataProductCopyWith(
          DataProduct value, $Res Function(DataProduct) then) =
      _$DataProductCopyWithImpl<$Res>;
  $Res call({List<Product> products, int total, dynamic skip, int limit});
}

/// @nodoc
class _$DataProductCopyWithImpl<$Res> implements $DataProductCopyWith<$Res> {
  _$DataProductCopyWithImpl(this._value, this._then);

  final DataProduct _value;
  // ignore: unused_field
  final $Res Function(DataProduct) _then;

  @override
  $Res call({
    Object? products = freezed,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: skip == freezed
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DataProductCopyWith<$Res>
    implements $DataProductCopyWith<$Res> {
  factory _$DataProductCopyWith(
          _DataProduct value, $Res Function(_DataProduct) then) =
      __$DataProductCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products, int total, dynamic skip, int limit});
}

/// @nodoc
class __$DataProductCopyWithImpl<$Res> extends _$DataProductCopyWithImpl<$Res>
    implements _$DataProductCopyWith<$Res> {
  __$DataProductCopyWithImpl(
      _DataProduct _value, $Res Function(_DataProduct) _then)
      : super(_value, (v) => _then(v as _DataProduct));

  @override
  _DataProduct get _value => super._value as _DataProduct;

  @override
  $Res call({
    Object? products = freezed,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_DataProduct(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: skip == freezed
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DataProduct implements _DataProduct {
  const _$_DataProduct(
      {required this.products,
      required this.total,
      required this.skip,
      required this.limit});

  @override
  final List<Product> products;
  @override
  final int total;
  @override
  final dynamic skip;
  @override
  final int limit;

  @override
  String toString() {
    return 'DataProduct(products: $products, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataProduct &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.skip, skip) &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(skip),
      const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  _$DataProductCopyWith<_DataProduct> get copyWith =>
      __$DataProductCopyWithImpl<_DataProduct>(this, _$identity);
}

abstract class _DataProduct implements DataProduct {
  const factory _DataProduct(
      {required List<Product> products,
      required int total,
      required dynamic skip,
      required int limit}) = _$_DataProduct;

  @override
  List<Product> get products;
  @override
  int get total;
  @override
  dynamic get skip;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$DataProductCopyWith<_DataProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
