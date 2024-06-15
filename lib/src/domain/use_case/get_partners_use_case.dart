import 'package:gradu_go/src/domain/model/partner.dart';
import 'package:gradu_go/src/domain/repository/partner_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class GetPartnersUseCase {
  const GetPartnersUseCase({required PartnerRepository partnerRepository})
      : _partnerRepository = partnerRepository;

  final PartnerRepository _partnerRepository;

  Future<List<Partner>?> execute({
    String? name,
    String? city,
    String? segment,
  }) =>
      _partnerRepository.getAll(name: name, city: city, segment: segment);
}
