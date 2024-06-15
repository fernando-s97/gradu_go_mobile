import 'package:collection/collection.dart';
import 'package:gradu_go/src/domain/model/partner.dart';
import 'package:gradu_go/src/domain/repository/partner_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class GetPartnerDetailsUseCase {
  const GetPartnerDetailsUseCase({required PartnerRepository partnerRepository})
      : _partnerRepository = partnerRepository;

  final PartnerRepository _partnerRepository;

  Future<Partner?> execute({required String partnerId}) async {
    final partners = await _partnerRepository.getAll();
    return partners?.singleWhereOrNull((it) => it.id == partnerId);
  }
}
