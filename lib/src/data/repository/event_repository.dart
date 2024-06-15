import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/gradu_go_api.dart';
import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/model/gradu_go_event.dart';
import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/model/rest_result.dart';
import 'package:gradu_go/src/domain/model/event.dart';
import 'package:gradu_go/src/domain/repository/event_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: EventRepository)
final class EventRepositoryImpl implements EventRepository {
  const EventRepositoryImpl({required GraduGoApi graduGoApi})
      : _graduGoApi = graduGoApi;

  final GraduGoApi _graduGoApi;

  @override
  Future<List<Event>?> getAll() async {
    final events = await _graduGoApi.getEvents();

    return switch (events) {
      RestResultGenericError<List<GraduGoEvent>>() => null,
      RestResultNetworkError<List<GraduGoEvent>>() => null,
      RestResultOk<List<GraduGoEvent>>(:final value) =>
        value.map((it) => it.toDomain()).toList(),
      RestResultNotFound<List<GraduGoEvent>>() => null,
      RestResultUnknownStatusCode<List<GraduGoEvent>>() => null,
    };
  }
}

extension on GraduGoEvent {
  Event toDomain() => Event(
        id: id,
        flyer: flyer,
        name: name,
        begin: begin,
        end: end,
        address: address,
        discount: discount,
        facebook: facebook,
      );
}
