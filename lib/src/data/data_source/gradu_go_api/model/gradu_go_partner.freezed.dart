// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gradu_go_partner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GraduGoPartner _$GraduGoPartnerFromJson(Map<String, dynamic> json) {
  return _GraduGoPartner.fromJson(json);
}

/// @nodoc
mixin _$GraduGoPartner {
  String get id => throw _privateConstructorUsedError;

  String get logo => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  String? get address => throw _privateConstructorUsedError;

  String? get phone => throw _privateConstructorUsedError;

  String? get facebook => throw _privateConstructorUsedError;

  String? get instagram => throw _privateConstructorUsedError;

  String? get discount => throw _privateConstructorUsedError;

  String? get segments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$GraduGoPartnerImpl implements _GraduGoPartner {
  const _$GraduGoPartnerImpl(
      {required this.id,
      required this.logo,
      required this.name,
      required this.address,
      required this.phone,
      required this.facebook,
      required this.instagram,
      required this.discount,
      required this.segments});

  factory _$GraduGoPartnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$GraduGoPartnerImplFromJson(json);

  @override
  final String id;
  @override
  final String logo;
  @override
  final String name;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  final String? facebook;
  @override
  final String? instagram;
  @override
  final String? discount;
  @override
  final String? segments;

  @override
  String toString() {
    return 'GraduGoPartner(id: $id, logo: $logo, name: $name, address: $address, phone: $phone, facebook: $facebook, instagram: $instagram, discount: $discount, segments: $segments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraduGoPartnerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.segments, segments) ||
                other.segments == segments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, logo, name, address, phone,
      facebook, instagram, discount, segments);

  @override
  Map<String, dynamic> toJson() {
    return _$$GraduGoPartnerImplToJson(
      this,
    );
  }
}

abstract class _GraduGoPartner implements GraduGoPartner {
  const factory _GraduGoPartner(
      {required final String id,
      required final String logo,
      required final String name,
      required final String? address,
      required final String? phone,
      required final String? facebook,
      required final String? instagram,
      required final String? discount,
      required final String? segments}) = _$GraduGoPartnerImpl;

  factory _GraduGoPartner.fromJson(Map<String, dynamic> json) =
      _$GraduGoPartnerImpl.fromJson;

  @override
  String get id;

  @override
  String get logo;

  @override
  String get name;

  @override
  String? get address;

  @override
  String? get phone;

  @override
  String? get facebook;

  @override
  String? get instagram;

  @override
  String? get discount;

  @override
  String? get segments;
}
