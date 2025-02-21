import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/gradu_go_api.dart';
import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/model/gradu_go_partner.dart';
import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/model/rest_result.dart';
import 'package:gradu_go/src/domain/model/establishment.dart';
import 'package:gradu_go/src/domain/repository/establishment_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: EstablishmentRepository)
final class PartnerRepositoryImpl implements EstablishmentRepository {
  const PartnerRepositoryImpl({required GraduGoApi graduGoApi})
      : _graduGoApi = graduGoApi;

  final GraduGoApi _graduGoApi;

  @override
  Future<List<Establishment>?> getAll({
    String? name,
    String? city,
    String? segment,
  }) async {
    final partners =
        await _graduGoApi.getPartners(name: name, city: city, segment: segment);

    return switch (partners) {
      RestResultNetworkError<List<GraduGoPartner>>() => null,
      RestResultOk<List<GraduGoPartner>>(:final value) =>
        value.map((it) => it.toDomain()).toList(),
      RestResultNotFound<List<GraduGoPartner>>() => null,
      RestResultParseError<List<GraduGoPartner>>() => null,
      RestResultUnknown<List<GraduGoPartner>>() => null,
    };
  }
}

extension on GraduGoPartner {
  Establishment toDomain() => Establishment(
        id: id,
        logo: logo,
        name: name,
        address: address,
        phone: phone,
        facebook: facebook,
        instagram: instagram,
        discount: discount,
        segment: segment,
      );
}
