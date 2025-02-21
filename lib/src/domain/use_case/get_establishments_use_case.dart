import 'package:gradu_go/src/domain/model/establishment.dart';
import 'package:gradu_go/src/domain/repository/establishment_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class GetEstablishmentsUseCase {
  const GetEstablishmentsUseCase(
      {required EstablishmentRepository establishmentRepository})
      : _establishmentRepository = establishmentRepository;

  final EstablishmentRepository _establishmentRepository;

  Future<List<Establishment>?> execute({
    String? name,
    String? city,
    String? segment,
  }) =>
      _establishmentRepository.getAll(name: name, city: city, segment: segment);
}
