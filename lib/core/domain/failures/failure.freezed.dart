// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  LocalFailure localFailure({required String message}) {
    return LocalFailure(
      message: message,
    );
  }

  ServerFailure serverFailure({required String message}) {
    return ServerFailure(
      message: message,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localFailure,
    required TResult Function(String message) serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? localFailure,
    TResult Function(String message)? serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localFailure,
    TResult Function(String message)? serverFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalFailure value) localFailure,
    required TResult Function(ServerFailure value) serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocalFailure value)? localFailure,
    TResult Function(ServerFailure value)? serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalFailure value)? localFailure,
    TResult Function(ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $LocalFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $LocalFailureCopyWith(
          LocalFailure value, $Res Function(LocalFailure) then) =
      _$LocalFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$LocalFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $LocalFailureCopyWith<$Res> {
  _$LocalFailureCopyWithImpl(
      LocalFailure _value, $Res Function(LocalFailure) _then)
      : super(_value, (v) => _then(v as LocalFailure));

  @override
  LocalFailure get _value => super._value as LocalFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(LocalFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalFailure implements LocalFailure {
  const _$LocalFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.localFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $LocalFailureCopyWith<LocalFailure> get copyWith =>
      _$LocalFailureCopyWithImpl<LocalFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localFailure,
    required TResult Function(String message) serverFailure,
  }) {
    return localFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? localFailure,
    TResult Function(String message)? serverFailure,
  }) {
    return localFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localFailure,
    TResult Function(String message)? serverFailure,
    required TResult orElse(),
  }) {
    if (localFailure != null) {
      return localFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalFailure value) localFailure,
    required TResult Function(ServerFailure value) serverFailure,
  }) {
    return localFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocalFailure value)? localFailure,
    TResult Function(ServerFailure value)? serverFailure,
  }) {
    return localFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalFailure value)? localFailure,
    TResult Function(ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (localFailure != null) {
      return localFailure(this);
    }
    return orElse();
  }
}

abstract class LocalFailure implements Failure {
  const factory LocalFailure({required String message}) = _$LocalFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $LocalFailureCopyWith<LocalFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure _value, $Res Function(ServerFailure) _then)
      : super(_value, (v) => _then(v as ServerFailure));

  @override
  ServerFailure get _value => super._value as ServerFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ServerFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailure implements ServerFailure {
  const _$ServerFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ServerFailureCopyWith<ServerFailure> get copyWith =>
      _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) localFailure,
    required TResult Function(String message) serverFailure,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? localFailure,
    TResult Function(String message)? serverFailure,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? localFailure,
    TResult Function(String message)? serverFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalFailure value) localFailure,
    required TResult Function(ServerFailure value) serverFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocalFailure value)? localFailure,
    TResult Function(ServerFailure value)? serverFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalFailure value)? localFailure,
    TResult Function(ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure({required String message}) = _$ServerFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $ServerFailureCopyWith<ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
