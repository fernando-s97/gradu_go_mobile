import 'package:collection/collection.dart';
import 'package:gradu_go/src/domain/model/partner.dart';
import 'package:gradu_go/src/domain/repository/partner_repository.dart';

final class GetPartnerDetailsUseCase {
  GetPartnerDetailsUseCase({required PartnerRepository partnerRepository})
      : _partnerRepository = partnerRepository;

  final PartnerRepository _partnerRepository;

  Future<Partner?> call({required String partnerId}) async {
    final partners = await _partnerRepository.getAll();
    return partners?.singleWhereOrNull((it) => it.id == partnerId);
  }
}
