import 'package:gradu_go/src/domain/model/graduate.dart';
import 'package:gradu_go/src/domain/repository/graduate_repository.dart';

final class AuthenticateGraduateUseCase {
  AuthenticateGraduateUseCase({required GraduateRepository graduateRepository})
      : _graduateRepository = graduateRepository;

  final GraduateRepository _graduateRepository;

  Future<String?> call({required GraduateCredential credential}) =>
      _graduateRepository.authenticate(credential: credential);
}
