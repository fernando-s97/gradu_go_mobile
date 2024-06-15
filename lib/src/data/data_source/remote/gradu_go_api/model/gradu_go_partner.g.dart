// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gradu_go_partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GraduGoPartnerImpl _$$GraduGoPartnerImplFromJson(Map<String, dynamic> json) =>
    _$GraduGoPartnerImpl(
      id: json['id'] as String,
      logo: json['logo'] as String,
      name: json['name'] as String,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      facebook: json['facebook'] as String?,
      instagram: json['instagram'] as String?,
      discount: json['discount'] as String?,
      segments: json['segments'] as String?,
    );

Map<String, dynamic> _$$GraduGoPartnerImplToJson(
        _$GraduGoPartnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo': instance.logo,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'discount': instance.discount,
      'segments': instance.segments,
    };
