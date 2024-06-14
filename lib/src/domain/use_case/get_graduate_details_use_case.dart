import 'package:gradu_go/src/domain/model/graduate.dart';
import 'package:gradu_go/src/domain/repository/graduate_repository.dart';

final class GetGraduateDetailsUseCase {
  GetGraduateDetailsUseCase({required GraduateRepository graduateRepository})
      : _graduateRepository = graduateRepository;

  final GraduateRepository _graduateRepository;

  Future<Graduate?> call({required String id}) =>
      _graduateRepository.getDetails(id: id);
}
