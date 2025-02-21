// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Section {
  SectionHeader get header => throw _privateConstructorUsedError;
  SectionContentBuilder get contentBuilder =>
      throw _privateConstructorUsedError;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionCopyWith<Section> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res, Section>;
  @useResult
  $Res call({SectionHeader header, SectionContentBuilder contentBuilder});

  $SectionHeaderCopyWith<$Res> get header;
}

/// @nodoc
class _$SectionCopyWithImpl<$Res, $Val extends Section>
    implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? contentBuilder = null,
  }) {
    return _then(_value.copyWith(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as SectionHeader,
      contentBuilder: null == contentBuilder
          ? _value.contentBuilder
          : contentBuilder // ignore: cast_nullable_to_non_nullable
              as SectionContentBuilder,
    ) as $Val);
  }

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionHeaderCopyWith<$Res> get header {
    return $SectionHeaderCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionImplCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$$SectionImplCopyWith(
          _$SectionImpl value, $Res Function(_$SectionImpl) then) =
      __$$SectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SectionHeader header, SectionContentBuilder contentBuilder});

  @override
  $SectionHeaderCopyWith<$Res> get header;
}

/// @nodoc
class __$$SectionImplCopyWithImpl<$Res>
    extends _$SectionCopyWithImpl<$Res, _$SectionImpl>
    implements _$$SectionImplCopyWith<$Res> {
  __$$SectionImplCopyWithImpl(
      _$SectionImpl _value, $Res Function(_$SectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? contentBuilder = null,
  }) {
    return _then(_$SectionImpl(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as SectionHeader,
      contentBuilder: null == contentBuilder
          ? _value.contentBuilder
          : contentBuilder // ignore: cast_nullable_to_non_nullable
              as SectionContentBuilder,
    ));
  }
}

/// @nodoc

class _$SectionImpl implements _Section {
  const _$SectionImpl({required this.header, required this.contentBuilder});

  @override
  final SectionHeader header;
  @override
  final SectionContentBuilder contentBuilder;

  @override
  String toString() {
    return 'Section(header: $header, contentBuilder: $contentBuilder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionImpl &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.contentBuilder, contentBuilder) ||
                other.contentBuilder == contentBuilder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, header, contentBuilder);

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      __$$SectionImplCopyWithImpl<_$SectionImpl>(this, _$identity);
}

abstract class _Section implements Section {
  const factory _Section(
      {required final SectionHeader header,
      required final SectionContentBuilder contentBuilder}) = _$SectionImpl;

  @override
  SectionHeader get header;
  @override
  SectionContentBuilder get contentBuilder;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SectionHeader {
  String get title => throw _privateConstructorUsedError;
  Iterable<Widget> get actions => throw _privateConstructorUsedError;

  /// Create a copy of SectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionHeaderCopyWith<SectionHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionHeaderCopyWith<$Res> {
  factory $SectionHeaderCopyWith(
          SectionHeader value, $Res Function(SectionHeader) then) =
      _$SectionHeaderCopyWithImpl<$Res, SectionHeader>;
  @useResult
  $Res call({String title, Iterable<Widget> actions});
}

/// @nodoc
class _$SectionHeaderCopyWithImpl<$Res, $Val extends SectionHeader>
    implements $SectionHeaderCopyWith<$Res> {
  _$SectionHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as Iterable<Widget>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionHeaderImplCopyWith<$Res>
    implements $SectionHeaderCopyWith<$Res> {
  factory _$$SectionHeaderImplCopyWith(
          _$SectionHeaderImpl value, $Res Function(_$SectionHeaderImpl) then) =
      __$$SectionHeaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, Iterable<Widget> actions});
}

/// @nodoc
class __$$SectionHeaderImplCopyWithImpl<$Res>
    extends _$SectionHeaderCopyWithImpl<$Res, _$SectionHeaderImpl>
    implements _$$SectionHeaderImplCopyWith<$Res> {
  __$$SectionHeaderImplCopyWithImpl(
      _$SectionHeaderImpl _value, $Res Function(_$SectionHeaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? actions = null,
  }) {
    return _then(_$SectionHeaderImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as Iterable<Widget>,
    ));
  }
}

/// @nodoc

class _$SectionHeaderImpl implements _SectionHeader {
  const _$SectionHeaderImpl({required this.title, required this.actions});

  @override
  final String title;
  @override
  final Iterable<Widget> actions;

  @override
  String toString() {
    return 'SectionHeader(title: $title, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionHeaderImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(actions));

  /// Create a copy of SectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionHeaderImplCopyWith<_$SectionHeaderImpl> get copyWith =>
      __$$SectionHeaderImplCopyWithImpl<_$SectionHeaderImpl>(this, _$identity);
}

abstract class _SectionHeader implements SectionHeader {
  const factory _SectionHeader(
      {required final String title,
      required final Iterable<Widget> actions}) = _$SectionHeaderImpl;

  @override
  String get title;
  @override
  Iterable<Widget> get actions;

  /// Create a copy of SectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionHeaderImplCopyWith<_$SectionHeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
