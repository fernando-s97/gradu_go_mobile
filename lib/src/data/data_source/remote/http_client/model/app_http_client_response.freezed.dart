// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_http_client_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppHttpClientResponse<T> {
  int? get statusCode => throw _privateConstructorUsedError;
  T? get body => throw _privateConstructorUsedError;
}

/// @nodoc

class _$AppHttpClientResponseImpl<T> implements _AppHttpClientResponse<T> {
  const _$AppHttpClientResponseImpl(
      {required this.statusCode, required this.body});

  @override
  final int? statusCode;
  @override
  final T? body;

  @override
  String toString() {
    return 'AppHttpClientResponse<$T>(statusCode: $statusCode, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppHttpClientResponseImpl<T> &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, statusCode, const DeepCollectionEquality().hash(body));
}

abstract class _AppHttpClientResponse<T> implements AppHttpClientResponse<T> {
  const factory _AppHttpClientResponse(
      {required final int? statusCode,
      required final T? body}) = _$AppHttpClientResponseImpl<T>;

  @override
  int? get statusCode;
  @override
  T? get body;
}
