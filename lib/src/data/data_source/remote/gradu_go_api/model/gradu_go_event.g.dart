// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gradu_go_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GraduGoEventImpl _$$GraduGoEventImplFromJson(Map<String, dynamic> json) =>
    _$GraduGoEventImpl(
      id: json['id'] as String,
      flyer: json['flyer'] as String,
      name: json['name'] as String,
      begin: DateTime.parse(json['begin'] as String),
      end: DateTime.parse(json['end'] as String),
      address: json['address'] as String,
      discount: json['discount'] as String,
      facebook: json['facebook'] as String,
    );

Map<String, dynamic> _$$GraduGoEventImplToJson(_$GraduGoEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'flyer': instance.flyer,
      'name': instance.name,
      'begin': instance.begin.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'address': instance.address,
      'discount': instance.discount,
      'facebook': instance.facebook,
    };
