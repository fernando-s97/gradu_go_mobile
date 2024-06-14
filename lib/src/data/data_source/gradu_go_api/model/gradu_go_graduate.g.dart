// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gradu_go_graduate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GraduGoGraduateImpl _$$GraduGoGraduateImplFromJson(
        Map<String, dynamic> json) =>
    _$GraduGoGraduateImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      program: json['program'] as String,
      institution: json['institution'] as String,
      clientCode: json['clientCode'] as String,
      project: json['project'] as String,
      graduationDate: DateTime.parse(json['graduationDate'] as String),
      password: json['password'] as String,
    );

Map<String, dynamic> _$$GraduGoGraduateImplToJson(
        _$GraduGoGraduateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'program': instance.program,
      'institution': instance.institution,
      'clientCode': instance.clientCode,
      'project': instance.project,
      'graduationDate': instance.graduationDate.toIso8601String(),
      'password': instance.password,
    };
