import 'package:gradu_go/src/domain/model/event.dart';
import 'package:gradu_go/src/domain/repository/event_repository.dart';

final class GetEventsUseCase {
  GetEventsUseCase({required EventRepository eventRepository})
      : _eventRepository = eventRepository;

  final EventRepository _eventRepository;

  Future<List<Event>?> call() => _eventRepository.getAll();
}
