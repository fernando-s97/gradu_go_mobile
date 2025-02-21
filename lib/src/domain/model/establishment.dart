import 'package:freezed_annotation/freezed_annotation.dart';

part 'establishment.freezed.dart';

@Freezed()
class Establishment with _$Establishment {
  const factory Establishment({
    required String id,
    required String logo,
    required String name,
    required String? address,
    required String? phone,
    required String? facebook,
    required String? instagram,
    required String? discount,
    required String? segment,
  }) = _Establishment;
}
