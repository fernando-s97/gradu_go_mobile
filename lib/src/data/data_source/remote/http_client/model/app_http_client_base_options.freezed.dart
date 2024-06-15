// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_http_client_base_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppHttpClientBaseOptions {
  String? get url => throw _privateConstructorUsedError;
}

/// @nodoc

class _$AppHttpClientBaseOptionsImpl implements _AppHttpClientBaseOptions {
  const _$AppHttpClientBaseOptionsImpl({this.url});

  @override
  final String? url;

  @override
  String toString() {
    return 'AppHttpClientBaseOptions(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppHttpClientBaseOptionsImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);
}

abstract class _AppHttpClientBaseOptions implements AppHttpClientBaseOptions {
  const factory _AppHttpClientBaseOptions({final String? url}) =
      _$AppHttpClientBaseOptionsImpl;

  @override
  String? get url;
}
