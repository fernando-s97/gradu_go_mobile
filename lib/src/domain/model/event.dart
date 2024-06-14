import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@Freezed()
class Event with _$Event {
  const factory Event({
    required String id,
    required String flyer,
    required String name,
    required DateTime begin,
    required DateTime end,
    required String address,
    required String discount,
    required String facebook,
  }) = _Event;
}
