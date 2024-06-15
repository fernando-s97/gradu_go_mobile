import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gradu_go/src/core/extensions/generic_extensions.dart';
import 'package:gradu_go/src/helpers/util.dart';
import 'package:intl/intl.dart';

part 'gradu_go_event.freezed.dart';
part 'gradu_go_event.g.dart';

@Freezed(copyWith: false)
class GraduGoEvent with _$GraduGoEvent {
  const factory GraduGoEvent({
    required String id,
    required String flyer,
    required String name,
    @_UsualDateConverter() required DateTime begin,
    @_UsualDateConverter() required DateTime end,
    required String address,
    required String discount,
    required String facebook,
  }) = _GraduGoEvent;

  factory GraduGoEvent.fromJson(Map<String, Object?> json) =>
      _$GraduGoEventFromJson(json);
}

final class _UsualDateConverter implements JsonConverter<DateTime?, String?> {
  const _UsualDateConverter();

  @override
  DateTime? fromJson(String? timestamp) => timestamp?.let(DateTime.parse);

  @override
  String? toJson(DateTime? date) =>
      date?.let((it) => DateFormat(Util.usualDateFormat).format(it));
}
