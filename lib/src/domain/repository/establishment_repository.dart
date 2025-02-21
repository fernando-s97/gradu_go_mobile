import 'package:gradu_go/src/domain/model/establishment.dart';

abstract interface class EstablishmentRepository {
  const EstablishmentRepository();

  Future<List<Establishment>?> getAll(
      {String? name, String? city, String? segment});
}
