import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner.freezed.dart';

@Freezed()
class Partner with _$Partner {
  const factory Partner({
    required String id,
    required String logo,
    required String name,
    String? address,
    String? phone,
    String? facebook,
    String? instagram,
    String? discount,
    String? segments,
  }) = _Partner;
}
