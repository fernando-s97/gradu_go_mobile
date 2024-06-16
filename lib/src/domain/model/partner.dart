import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner.freezed.dart';

@Freezed()
class Partner with _$Partner {
  const factory Partner({
    required String id,
    required String logo,
    required String name,
    required String? address,
    required String? phone,
    required String? facebook,
    required String? instagram,
    required String? discount,
    required String? segment,
  }) = _Partner;
}
