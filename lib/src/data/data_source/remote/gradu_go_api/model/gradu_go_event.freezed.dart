// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gradu_go_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GraduGoEvent _$GraduGoEventFromJson(Map<String, dynamic> json) {
  return _GraduGoEvent.fromJson(json);
}

/// @nodoc
mixin _$GraduGoEvent {
  String get id => throw _privateConstructorUsedError;
  String get flyer => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @_UsualDateConverter()
  DateTime get begin => throw _privateConstructorUsedError;
  @_UsualDateConverter()
  DateTime get end => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  String get facebook => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$GraduGoEventImpl implements _GraduGoEvent {
  const _$GraduGoEventImpl(
      {required this.id,
      required this.flyer,
      required this.name,
      @_UsualDateConverter() required this.begin,
      @_UsualDateConverter() required this.end,
      required this.address,
      required this.discount,
      required this.facebook});

  factory _$GraduGoEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$GraduGoEventImplFromJson(json);

  @override
  final String id;
  @override
  final String flyer;
  @override
  final String name;
  @override
  @_UsualDateConverter()
  final DateTime begin;
  @override
  @_UsualDateConverter()
  final DateTime end;
  @override
  final String address;
  @override
  final String discount;
  @override
  final String facebook;

  @override
  String toString() {
    return 'GraduGoEvent(id: $id, flyer: $flyer, name: $name, begin: $begin, end: $end, address: $address, discount: $discount, facebook: $facebook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraduGoEventImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, flyer, name, begin, end, address, discount, facebook);

  @override
  Map<String, dynamic> toJson() {
    return _$$GraduGoEventImplToJson(
      this,
    );
  }
}

abstract class _GraduGoEvent implements GraduGoEvent {
  const factory _GraduGoEvent(
      {required final String id,
      required final String flyer,
      required final String name,
      @_UsualDateConverter() required final DateTime begin,
      @_UsualDateConverter() required final DateTime end,
      required final String address,
      required final String discount,
      required final String facebook}) = _$GraduGoEventImpl;

  factory _GraduGoEvent.fromJson(Map<String, dynamic> json) =
      _$GraduGoEventImpl.fromJson;

  @override
  String get id;
  @override
  String get flyer;
  @override
  String get name;
  @override
  @_UsualDateConverter()
  DateTime get begin;
  @override
  @_UsualDateConverter()
  DateTime get end;
  @override
  String get address;
  @override
  String get discount;
  @override
  String get facebook;
}
