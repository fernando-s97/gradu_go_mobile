import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/gradu_go_api.dart';
import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/model/gradu_go_graduate.dart';
import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/model/rest_result.dart';
import 'package:gradu_go/src/domain/model/graduate.dart';
import 'package:gradu_go/src/domain/repository/graduate_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GraduateRepository)
final class GraduateRepositoryImpl implements GraduateRepository {
  const GraduateRepositoryImpl({required GraduGoApi graduGoApi})
      : _graduGoApi = graduGoApi;

  final GraduGoApi _graduGoApi;

  @override
  Future<String?> authenticate({required GraduateCredential credential}) async {
    final result = await _graduGoApi.authenticateGraduate(
      email: credential.email,
      password: credential.password,
    );

    return switch (result) {
      RestResultGenericError<String>() => null,
      RestResultNetworkError<String>() => null,
      RestResultOk<String>(:final value) => value,
      RestResultNotFound<String>() => null,
      RestResultUnknownStatusCode<String>() => null,
    };
  }

  @override
  Future<Graduate?> getDetails({required String id}) async {
    final details = await _graduGoApi.getGraduateDetails(id: id);

    return switch (details) {
      RestResultGenericError<GraduGoGraduate>() => null,
      RestResultNetworkError<GraduGoGraduate>() => null,
      RestResultOk<GraduGoGraduate>(:final value) => value.toDomain(),
      RestResultNotFound<GraduGoGraduate>() => null,
      RestResultUnknownStatusCode<GraduGoGraduate>() => null,
    };
  }
}

extension on GraduGoGraduate {
  Graduate toDomain() => Graduate(
        id: id,
        name: name,
        program: program,
        institution: institution,
        clientCode: clientCode,
        project: project,
        graduationDate: graduationDate,
        credential: GraduateCredential(email: email, password: password),
      );
}
