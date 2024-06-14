// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graduate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Graduate {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get program => throw _privateConstructorUsedError;
  String get institution => throw _privateConstructorUsedError;
  String get clientCode => throw _privateConstructorUsedError;
  String get project => throw _privateConstructorUsedError;
  DateTime get graduationDate => throw _privateConstructorUsedError;
  GraduateCredential get credential => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GraduateCopyWith<Graduate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraduateCopyWith<$Res> {
  factory $GraduateCopyWith(Graduate value, $Res Function(Graduate) then) =
      _$GraduateCopyWithImpl<$Res, Graduate>;
  @useResult
  $Res call(
      {String id,
      String name,
      String program,
      String institution,
      String clientCode,
      String project,
      DateTime graduationDate,
      GraduateCredential credential});
}

/// @nodoc
class _$GraduateCopyWithImpl<$Res, $Val extends Graduate>
    implements $GraduateCopyWith<$Res> {
  _$GraduateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? program = null,
    Object? institution = null,
    Object? clientCode = null,
    Object? project = null,
    Object? graduationDate = null,
    Object? credential = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      program: null == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      clientCode: null == clientCode
          ? _value.clientCode
          : clientCode // ignore: cast_nullable_to_non_nullable
              as String,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      graduationDate: null == graduationDate
          ? _value.graduationDate
          : graduationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as GraduateCredential,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GraduateImplCopyWith<$Res>
    implements $GraduateCopyWith<$Res> {
  factory _$$GraduateImplCopyWith(
          _$GraduateImpl value, $Res Function(_$GraduateImpl) then) =
      __$$GraduateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String program,
      String institution,
      String clientCode,
      String project,
      DateTime graduationDate,
      GraduateCredential credential});
}

/// @nodoc
class __$$GraduateImplCopyWithImpl<$Res>
    extends _$GraduateCopyWithImpl<$Res, _$GraduateImpl>
    implements _$$GraduateImplCopyWith<$Res> {
  __$$GraduateImplCopyWithImpl(
      _$GraduateImpl _value, $Res Function(_$GraduateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? program = null,
    Object? institution = null,
    Object? clientCode = null,
    Object? project = null,
    Object? graduationDate = null,
    Object? credential = null,
  }) {
    return _then(_$GraduateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      program: null == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as String,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      clientCode: null == clientCode
          ? _value.clientCode
          : clientCode // ignore: cast_nullable_to_non_nullable
              as String,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      graduationDate: null == graduationDate
          ? _value.graduationDate
          : graduationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as GraduateCredential,
    ));
  }
}

/// @nodoc

class _$GraduateImpl implements _Graduate {
  const _$GraduateImpl(
      {required this.id,
      required this.name,
      required this.program,
      required this.institution,
      required this.clientCode,
      required this.project,
      required this.graduationDate,
      required this.credential});

  @override
  final String id;
  @override
  final String name;
  @override
  final String program;
  @override
  final String institution;
  @override
  final String clientCode;
  @override
  final String project;
  @override
  final DateTime graduationDate;
  @override
  final GraduateCredential credential;

  @override
  String toString() {
    return 'Graduate(id: $id, name: $name, program: $program, institution: $institution, clientCode: $clientCode, project: $project, graduationDate: $graduationDate, credential: $credential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraduateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.program, program) || other.program == program) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.clientCode, clientCode) ||
                other.clientCode == clientCode) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.graduationDate, graduationDate) ||
                other.graduationDate == graduationDate) &&
            (identical(other.credential, credential) ||
                other.credential == credential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, program, institution,
      clientCode, project, graduationDate, credential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GraduateImplCopyWith<_$GraduateImpl> get copyWith =>
      __$$GraduateImplCopyWithImpl<_$GraduateImpl>(this, _$identity);
}

abstract class _Graduate implements Graduate {
  const factory _Graduate(
      {required final String id,
      required final String name,
      required final String program,
      required final String institution,
      required final String clientCode,
      required final String project,
      required final DateTime graduationDate,
      required final GraduateCredential credential}) = _$GraduateImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get program;
  @override
  String get institution;
  @override
  String get clientCode;
  @override
  String get project;
  @override
  DateTime get graduationDate;
  @override
  GraduateCredential get credential;
  @override
  @JsonKey(ignore: true)
  _$$GraduateImplCopyWith<_$GraduateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GraduateCredential {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
}

/// @nodoc

class _$GraduateCredentialImpl implements _GraduateCredential {
  const _$GraduateCredentialImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'GraduateCredential(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraduateCredentialImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);
}

abstract class _GraduateCredential implements GraduateCredential {
  const factory _GraduateCredential(
      {required final String email,
      required final String password}) = _$GraduateCredentialImpl;

  @override
  String get email;
  @override
  String get password;
}
