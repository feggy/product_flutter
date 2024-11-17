// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataProduct {
  List<Product> get products => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  dynamic get skip => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Create a copy of DataProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataProductCopyWith<DataProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataProductCopyWith<$Res> {
  factory $DataProductCopyWith(
          DataProduct value, $Res Function(DataProduct) then) =
      _$DataProductCopyWithImpl<$Res, DataProduct>;
  @useResult
  $Res call({List<Product> products, int total, dynamic skip, int limit});
}

/// @nodoc
class _$DataProductCopyWithImpl<$Res, $Val extends DataProduct>
    implements $DataProductCopyWith<$Res> {
  _$DataProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? skip = freezed,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataProductImplCopyWith<$Res>
    implements $DataProductCopyWith<$Res> {
  factory _$$DataProductImplCopyWith(
          _$DataProductImpl value, $Res Function(_$DataProductImpl) then) =
      __$$DataProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products, int total, dynamic skip, int limit});
}

/// @nodoc
class __$$DataProductImplCopyWithImpl<$Res>
    extends _$DataProductCopyWithImpl<$Res, _$DataProductImpl>
    implements _$$DataProductImplCopyWith<$Res> {
  __$$DataProductImplCopyWithImpl(
      _$DataProductImpl _value, $Res Function(_$DataProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? skip = freezed,
    Object? limit = null,
  }) {
    return _then(_$DataProductImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DataProductImpl implements _DataProduct {
  const _$DataProductImpl(
      {required final List<Product> products,
      required this.total,
      required this.skip,
      required this.limit})
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataProductImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other.skip, skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      total,
      const DeepCollectionEquality().hash(skip),
      limit);

  /// Create a copy of DataProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataProductImplCopyWith<_$DataProductImpl> get copyWith =>
      __$$DataProductImplCopyWithImpl<_$DataProductImpl>(this, _$identity);
}

abstract class _DataProduct implements DataProduct {
  const factory _DataProduct(
      {required final List<Product> products,
      required final int total,
      required final dynamic skip,
      required final int limit}) = _$DataProductImpl;

  @override
  List<Product> get products;
  @override
  int get total;
  @override
  dynamic get skip;
  @override
  int get limit;

  /// Create a copy of DataProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataProductImplCopyWith<_$DataProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
