import 'package:gradu_go/src/core/model/rest_result.dart';
import 'package:gradu_go/src/data/data_source/gradu_go_api/gradu_go_api.dart';
import 'package:gradu_go/src/data/data_source/gradu_go_api/model/gradu_go_partner.dart';
import 'package:gradu_go/src/domain/model/partner.dart';
import 'package:gradu_go/src/domain/repository/partner_repository.dart';

final class PartnerRepositoryImpl implements PartnerRepository {
  const PartnerRepositoryImpl({required GraduGoApi graduGoApi})
      : _graduGoApi = graduGoApi;

  final GraduGoApi _graduGoApi;

  @override
  Future<List<Partner>?> getAll({String? city, String? segment}) async {
    final partners =
        await _graduGoApi.getPartners(city: city, segment: segment);
    
    return switch (partners) {
      RestResultGenericError<List<GraduGoPartner>>() => null,
      RestResultNetworkError<List<GraduGoPartner>>() => null,
      RestResultOk<List<GraduGoPartner>>(:final value) =>
        value.map((it) => it.toDomain()).toList(),
      RestResultNotFound<List<GraduGoPartner>>() => null,
      RestResultUnknownStatusCode<List<GraduGoPartner>>() => null,
    };
  }
}

extension on GraduGoPartner {
  Partner toDomain() => Partner(
        id: id,
        logo: logo,
        name: name,
        address: address,
        phone: phone,
        facebook: facebook,
        instagram: instagram,
        discount: discount,
        segments: segments,
      );
}
