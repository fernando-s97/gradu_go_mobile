import 'package:gradu_go/src/domain/model/event.dart';
import 'package:gradu_go/src/domain/repository/event_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class GetEventsUseCase {
  const GetEventsUseCase({required EventRepository eventRepository})
      : _eventRepository = eventRepository;

  final EventRepository _eventRepository;

  Future<List<Event>?> invoke({String? name, String? city, String? segment}) =>
      _eventRepository.getAll();
}
