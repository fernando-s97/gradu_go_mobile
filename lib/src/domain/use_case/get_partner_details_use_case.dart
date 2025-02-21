import 'package:collection/collection.dart';
import 'package:gradu_go/src/domain/model/establishment.dart';
import 'package:gradu_go/src/domain/repository/establishment_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class GetPartnerDetailsUseCase {
  const GetPartnerDetailsUseCase({
    required EstablishmentRepository establishmentRepository,
  }) : _establishmentRepository = establishmentRepository;

  final EstablishmentRepository _establishmentRepository;

  Future<Establishment?> execute({required String id}) async {
    final establishments = await _establishmentRepository.getAll();
    return establishments?.singleWhereOrNull((it) => it.id == id);
  }
}
