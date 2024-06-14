// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Partner {
  String get id => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get instagram => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  String? get segments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PartnerCopyWith<Partner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerCopyWith<$Res> {
  factory $PartnerCopyWith(Partner value, $Res Function(Partner) then) =
      _$PartnerCopyWithImpl<$Res, Partner>;
  @useResult
  $Res call(
      {String id,
      String logo,
      String name,
      String? address,
      String? phone,
      String? facebook,
      String? instagram,
      String? discount,
      String? segments});
}

/// @nodoc
class _$PartnerCopyWithImpl<$Res, $Val extends Partner>
    implements $PartnerCopyWith<$Res> {
  _$PartnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logo = null,
    Object? name = null,
    Object? address = freezed,
    Object? phone = freezed,
    Object? facebook = freezed,
    Object? instagram = freezed,
    Object? discount = freezed,
    Object? segments = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      segments: freezed == segments
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartnerImplCopyWith<$Res> implements $PartnerCopyWith<$Res> {
  factory _$$PartnerImplCopyWith(
          _$PartnerImpl value, $Res Function(_$PartnerImpl) then) =
      __$$PartnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String logo,
      String name,
      String? address,
      String? phone,
      String? facebook,
      String? instagram,
      String? discount,
      String? segments});
}

/// @nodoc
class __$$PartnerImplCopyWithImpl<$Res>
    extends _$PartnerCopyWithImpl<$Res, _$PartnerImpl>
    implements _$$PartnerImplCopyWith<$Res> {
  __$$PartnerImplCopyWithImpl(
      _$PartnerImpl _value, $Res Function(_$PartnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logo = null,
    Object? name = null,
    Object? address = freezed,
    Object? phone = freezed,
    Object? facebook = freezed,
    Object? instagram = freezed,
    Object? discount = freezed,
    Object? segments = freezed,
  }) {
    return _then(_$PartnerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      segments: freezed == segments
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PartnerImpl implements _Partner {
  const _$PartnerImpl(
      {required this.id,
      required this.logo,
      required this.name,
      this.address,
      this.phone,
      this.facebook,
      this.instagram,
      this.discount,
      this.segments});

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
    return 'Partner(id: $id, logo: $logo, name: $name, address: $address, phone: $phone, facebook: $facebook, instagram: $instagram, discount: $discount, segments: $segments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, logo, name, address, phone,
      facebook, instagram, discount, segments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerImplCopyWith<_$PartnerImpl> get copyWith =>
      __$$PartnerImplCopyWithImpl<_$PartnerImpl>(this, _$identity);
}

abstract class _Partner implements Partner {
  const factory _Partner(
      {required final String id,
      required final String logo,
      required final String name,
      final String? address,
      final String? phone,
      final String? facebook,
      final String? instagram,
      final String? discount,
      final String? segments}) = _$PartnerImpl;

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
  @override
  @JsonKey(ignore: true)
  _$$PartnerImplCopyWith<_$PartnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
