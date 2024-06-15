// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rest_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RestResult<T> {}

/// @nodoc

class _$RestResultGenericErrorImpl<T> implements RestResultGenericError<T> {
  const _$RestResultGenericErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RestResult<$T>.genericError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestResultGenericErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);
}

abstract class RestResultGenericError<T> implements RestResult<T> {
  const factory RestResultGenericError({required final String message}) =
      _$RestResultGenericErrorImpl<T>;

  String get message;
}

/// @nodoc

class _$RestResultNetworkErrorImpl<T> implements RestResultNetworkError<T> {
  const _$RestResultNetworkErrorImpl();

  @override
  String toString() {
    return 'RestResult<$T>.networkError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestResultNetworkErrorImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class RestResultNetworkError<T> implements RestResult<T> {
  const factory RestResultNetworkError() = _$RestResultNetworkErrorImpl<T>;
}

/// @nodoc

class _$RestResultOkImpl<T> implements RestResultOk<T> {
  const _$RestResultOkImpl({required this.value});

  @override
  final T value;

  @override
  String toString() {
    return 'RestResult<$T>.ok(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestResultOkImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));
}

abstract class RestResultOk<T> implements RestResult<T> {
  const factory RestResultOk({required final T value}) = _$RestResultOkImpl<T>;

  T get value;
}

/// @nodoc

class _$RestResultNotFoundImpl<T> implements RestResultNotFound<T> {
  const _$RestResultNotFoundImpl();

  @override
  String toString() {
    return 'RestResult<$T>.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestResultNotFoundImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class RestResultNotFound<T> implements RestResult<T> {
  const factory RestResultNotFound() = _$RestResultNotFoundImpl<T>;
}

/// @nodoc

class _$RestResultUnknownStatusCodeImpl<T>
    implements RestResultUnknownStatusCode<T> {
  const _$RestResultUnknownStatusCodeImpl({required this.statusCode});

  @override
  final int statusCode;

  @override
  String toString() {
    return 'RestResult<$T>.unknownStatusCode(statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestResultUnknownStatusCodeImpl<T> &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode);
}

abstract class RestResultUnknownStatusCode<T> implements RestResult<T> {
  const factory RestResultUnknownStatusCode({required final int statusCode}) =
      _$RestResultUnknownStatusCodeImpl<T>;

  int get statusCode;
}
