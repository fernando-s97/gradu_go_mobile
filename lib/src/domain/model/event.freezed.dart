// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Event {
  String get id => throw _privateConstructorUsedError;
  String get flyer => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get begin => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  String get facebook => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {String id,
      String flyer,
      String name,
      DateTime begin,
      DateTime end,
      String address,
      String discount,
      String facebook});
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? flyer = null,
    Object? name = null,
    Object? begin = null,
    Object? end = null,
    Object? address = null,
    Object? discount = null,
    Object? facebook = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      flyer: null == flyer
          ? _value.flyer
          : flyer // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      begin: null == begin
          ? _value.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      facebook: null == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String flyer,
      String name,
      DateTime begin,
      DateTime end,
      String address,
      String discount,
      String facebook});
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? flyer = null,
    Object? name = null,
    Object? begin = null,
    Object? end = null,
    Object? address = null,
    Object? discount = null,
    Object? facebook = null,
  }) {
    return _then(_$EventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      flyer: null == flyer
          ? _value.flyer
          : flyer // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      begin: null == begin
          ? _value.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      facebook: null == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventImpl implements _Event {
  const _$EventImpl(
      {required this.id,
      required this.flyer,
      required this.name,
      required this.begin,
      required this.end,
      required this.address,
      required this.discount,
      required this.facebook});

  @override
  final String id;
  @override
  final String flyer;
  @override
  final String name;
  @override
  final DateTime begin;
  @override
  final DateTime end;
  @override
  final String address;
  @override
  final String discount;
  @override
  final String facebook;

  @override
  String toString() {
    return 'Event(id: $id, flyer: $flyer, name: $name, begin: $begin, end: $end, address: $address, discount: $discount, facebook: $facebook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flyer, flyer) || other.flyer == flyer) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.begin, begin) || other.begin == begin) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, flyer, name, begin, end, address, discount, facebook);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);
}

abstract class _Event implements Event {
  const factory _Event(
      {required final String id,
      required final String flyer,
      required final String name,
      required final DateTime begin,
      required final DateTime end,
      required final String address,
      required final String discount,
      required final String facebook}) = _$EventImpl;

  @override
  String get id;
  @override
  String get flyer;
  @override
  String get name;
  @override
  DateTime get begin;
  @override
  DateTime get end;
  @override
  String get address;
  @override
  String get discount;
  @override
  String get facebook;
  @override
  @JsonKey(ignore: true)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
