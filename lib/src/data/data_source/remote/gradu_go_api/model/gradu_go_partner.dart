import 'package:freezed_annotation/freezed_annotation.dart';

part 'gradu_go_partner.freezed.dart';
part 'gradu_go_partner.g.dart';

@Freezed(copyWith: false)
class GraduGoPartner with _$GraduGoPartner {
  const factory GraduGoPartner({
    required String id,
    required String logo,
    required String name,
    required String? address,
    required String? phone,
    required String? facebook,
    required String? instagram,
    required String? discount,
    required String? segments,
  }) = _GraduGoPartner;

  factory GraduGoPartner.fromJson(Map<String, Object?> json) =>
      _$GraduGoPartnerFromJson(json);
}
