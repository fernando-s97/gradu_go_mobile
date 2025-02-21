// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeEventOpenEventDetailsImplCopyWith<$Res> {
  factory _$$HomeEventOpenEventDetailsImplCopyWith(
          _$HomeEventOpenEventDetailsImpl value,
          $Res Function(_$HomeEventOpenEventDetailsImpl) then) =
      __$$HomeEventOpenEventDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$HomeEventOpenEventDetailsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventOpenEventDetailsImpl>
    implements _$$HomeEventOpenEventDetailsImplCopyWith<$Res> {
  __$$HomeEventOpenEventDetailsImplCopyWithImpl(
      _$HomeEventOpenEventDetailsImpl _value,
      $Res Function(_$HomeEventOpenEventDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$HomeEventOpenEventDetailsImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$HomeEventOpenEventDetailsImpl implements HomeEventOpenEventDetails {
  const _$HomeEventOpenEventDetailsImpl({required this.event});

  @override
  final Event event;

  @override
  String toString() {
    return 'HomeEvent.openEventDetails(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventOpenEventDetailsImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventOpenEventDetailsImplCopyWith<_$HomeEventOpenEventDetailsImpl>
      get copyWith => __$$HomeEventOpenEventDetailsImplCopyWithImpl<
          _$HomeEventOpenEventDetailsImpl>(this, _$identity);
}

abstract class HomeEventOpenEventDetails implements HomeEvent {
  const factory HomeEventOpenEventDetails({required final Event event}) =
      _$HomeEventOpenEventDetailsImpl;

  Event get event;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeEventOpenEventDetailsImplCopyWith<_$HomeEventOpenEventDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeEventOpenEstablishmentDetailsImplCopyWith<$Res> {
  factory _$$HomeEventOpenEstablishmentDetailsImplCopyWith(
          _$HomeEventOpenEstablishmentDetailsImpl value,
          $Res Function(_$HomeEventOpenEstablishmentDetailsImpl) then) =
      __$$HomeEventOpenEstablishmentDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Establishment establishment});

  $EstablishmentCopyWith<$Res> get establishment;
}

/// @nodoc
class __$$HomeEventOpenEstablishmentDetailsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res,
        _$HomeEventOpenEstablishmentDetailsImpl>
    implements _$$HomeEventOpenEstablishmentDetailsImplCopyWith<$Res> {
  __$$HomeEventOpenEstablishmentDetailsImplCopyWithImpl(
      _$HomeEventOpenEstablishmentDetailsImpl _value,
      $Res Function(_$HomeEventOpenEstablishmentDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? establishment = null,
  }) {
    return _then(_$HomeEventOpenEstablishmentDetailsImpl(
      establishment: null == establishment
          ? _value.establishment
          : establishment // ignore: cast_nullable_to_non_nullable
              as Establishment,
    ));
  }

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EstablishmentCopyWith<$Res> get establishment {
    return $EstablishmentCopyWith<$Res>(_value.establishment, (value) {
      return _then(_value.copyWith(establishment: value));
    });
  }
}

/// @nodoc

class _$HomeEventOpenEstablishmentDetailsImpl
    implements HomeEventOpenEstablishmentDetails {
  const _$HomeEventOpenEstablishmentDetailsImpl({required this.establishment});

  @override
  final Establishment establishment;

  @override
  String toString() {
    return 'HomeEvent.openEstablishmentDetails(establishment: $establishment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventOpenEstablishmentDetailsImpl &&
            (identical(other.establishment, establishment) ||
                other.establishment == establishment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, establishment);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventOpenEstablishmentDetailsImplCopyWith<
          _$HomeEventOpenEstablishmentDetailsImpl>
      get copyWith => __$$HomeEventOpenEstablishmentDetailsImplCopyWithImpl<
          _$HomeEventOpenEstablishmentDetailsImpl>(this, _$identity);
}

abstract class HomeEventOpenEstablishmentDetails implements HomeEvent {
  const factory HomeEventOpenEstablishmentDetails(
          {required final Establishment establishment}) =
      _$HomeEventOpenEstablishmentDetailsImpl;

  Establishment get establishment;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeEventOpenEstablishmentDetailsImplCopyWith<
          _$HomeEventOpenEstablishmentDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeEventHandleErrorImplCopyWith<$Res> {
  factory _$$HomeEventHandleErrorImplCopyWith(_$HomeEventHandleErrorImpl value,
          $Res Function(_$HomeEventHandleErrorImpl) then) =
      __$$HomeEventHandleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$HomeEventHandleErrorImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventHandleErrorImpl>
    implements _$$HomeEventHandleErrorImplCopyWith<$Res> {
  __$$HomeEventHandleErrorImplCopyWithImpl(_$HomeEventHandleErrorImpl _value,
      $Res Function(_$HomeEventHandleErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$HomeEventHandleErrorImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$HomeEventHandleErrorImpl implements HomeEventHandleError {
  const _$HomeEventHandleErrorImpl(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'HomeEvent.handleError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventHandleErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventHandleErrorImplCopyWith<_$HomeEventHandleErrorImpl>
      get copyWith =>
          __$$HomeEventHandleErrorImplCopyWithImpl<_$HomeEventHandleErrorImpl>(
              this, _$identity);
}

abstract class HomeEventHandleError implements HomeEvent {
  const factory HomeEventHandleError(final Object error) =
      _$HomeEventHandleErrorImpl;

  Object get error;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeEventHandleErrorImplCopyWith<_$HomeEventHandleErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
