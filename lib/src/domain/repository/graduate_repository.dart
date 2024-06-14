import 'package:gradu_go/src/domain/model/graduate.dart';

abstract interface class GraduateRepository {
  const GraduateRepository();

  Future<String?> authenticate({required GraduateCredential credential});

  Future<Graduate?> getDetails({required String id});
}
