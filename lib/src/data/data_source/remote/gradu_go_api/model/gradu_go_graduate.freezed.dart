// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gradu_go_graduate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GraduGoGraduate _$GraduGoGraduateFromJson(Map<String, dynamic> json) {
  return _GraduGoGraduate.fromJson(json);
}

/// @nodoc
mixin _$GraduGoGraduate {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get program => throw _privateConstructorUsedError;
  String get institution => throw _privateConstructorUsedError;
  String get clientCode => throw _privateConstructorUsedError;
  String get project => throw _privateConstructorUsedError;
  @_ShortDateConverter()
  DateTime get graduationDate => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$GraduGoGraduateImpl implements _GraduGoGraduate {
  const _$GraduGoGraduateImpl(
      {required this.id,
      required this.email,
      required this.name,
      required this.program,
      required this.institution,
      required this.clientCode,
      required this.project,
      @_ShortDateConverter() required this.graduationDate,
      required this.password});

  factory _$GraduGoGraduateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GraduGoGraduateImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
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
  @_ShortDateConverter()
  final DateTime graduationDate;
  @override
  final String password;

  @override
  String toString() {
    return 'GraduGoGraduate(id: $id, email: $email, name: $name, program: $program, institution: $institution, clientCode: $clientCode, project: $project, graduationDate: $graduationDate, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraduGoGraduateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.program, program) || other.program == program) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.clientCode, clientCode) ||
                other.clientCode == clientCode) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.graduationDate, graduationDate) ||
                other.graduationDate == graduationDate) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, name, program,
      institution, clientCode, project, graduationDate, password);

  @override
  Map<String, dynamic> toJson() {
    return _$$GraduGoGraduateImplToJson(
      this,
    );
  }
}

abstract class _GraduGoGraduate implements GraduGoGraduate {
  const factory _GraduGoGraduate(
      {required final String id,
      required final String email,
      required final String name,
      required final String program,
      required final String institution,
      required final String clientCode,
      required final String project,
      @_ShortDateConverter() required final DateTime graduationDate,
      required final String password}) = _$GraduGoGraduateImpl;

  factory _GraduGoGraduate.fromJson(Map<String, dynamic> json) =
      _$GraduGoGraduateImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
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
  @_ShortDateConverter()
  DateTime get graduationDate;
  @override
  String get password;
}
