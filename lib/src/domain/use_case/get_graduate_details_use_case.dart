import 'package:gradu_go/src/domain/model/graduate.dart';
import 'package:gradu_go/src/domain/repository/graduate_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class GetGraduateDetailsUseCase {
  const GetGraduateDetailsUseCase({
    required GraduateRepository graduateRepository,
  }) : _graduateRepository = graduateRepository;

  final GraduateRepository _graduateRepository;

  Future<Graduate?> execute({required String id}) =>
      _graduateRepository.getDetails(id: id);
}
