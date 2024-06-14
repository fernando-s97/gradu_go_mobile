import 'package:gradu_go/src/domain/model/partner.dart';

abstract interface class PartnerRepository {
  const PartnerRepository();

  Future<List<Partner>?> getAll({String? city, String? segment});
}
