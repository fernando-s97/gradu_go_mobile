import 'package:gradu_go/src/domain/model/partner.dart';
import 'package:gradu_go/src/domain/repository/partner_repository.dart';

final class GetPartnersUseCase {
  GetPartnersUseCase({required PartnerRepository partnerRepository})
      : _partnerRepository = partnerRepository;

  final PartnerRepository _partnerRepository;

  Future<List<Partner>?> call({String? city, String? segment}) =>
      _partnerRepository.getAll(city: city, segment: segment);
}
