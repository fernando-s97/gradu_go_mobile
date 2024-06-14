import 'package:collection/collection.dart';
import 'package:gradu_go/src/domain/model/event.dart';
import 'package:gradu_go/src/domain/repository/event_repository.dart';

final class GetEventDetailsUseCase {
  GetEventDetailsUseCase({required EventRepository eventRepository})
      : _eventRepository = eventRepository;

  final EventRepository _eventRepository;

  Future<Event?> call({required String eventId}) async {
    final events = await _eventRepository.getAll();
    return events?.singleWhereOrNull((it) => it.id == eventId);
  }
}
