import 'package:gradu_go/src/domain/model/event.dart';

abstract interface class EventRepository {
  const EventRepository();

  Future<List<Event>?> getAll();
}
