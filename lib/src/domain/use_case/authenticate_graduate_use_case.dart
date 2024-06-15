import 'package:gradu_go/src/domain/model/graduate.dart';
import 'package:gradu_go/src/domain/repository/graduate_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class AuthenticateGraduateUseCase {
  const AuthenticateGraduateUseCase({
    required GraduateRepository graduateRepository,
  }) : _graduateRepository = graduateRepository;

  final GraduateRepository _graduateRepository;

  Future<String?> execute({required GraduateCredential credential}) =>
      _graduateRepository.authenticate(credential: credential);
}
