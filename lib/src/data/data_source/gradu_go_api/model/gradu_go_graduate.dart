import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gradu_go/src/core/extensions/generic_extensions.dart';
import 'package:gradu_go/src/helpers/util.dart';
import 'package:intl/intl.dart';

part 'gradu_go_graduate.freezed.dart';
part 'gradu_go_graduate.g.dart';

@Freezed(copyWith: false)
class GraduGoGraduate with _$GraduGoGraduate {
  const factory GraduGoGraduate({
    required String id,
    required String email,
    required String name,
    required String program,
    required String institution,
    required String clientCode,
    required String project,
    @_ShortDateConverter() required DateTime graduationDate,
    required String password,
  }) = _GraduGoGraduate;

  factory GraduGoGraduate.fromJson(Map<String, Object?> json) =>
      _$GraduGoGraduateFromJson(json);
}

final class _ShortDateConverter implements JsonConverter<DateTime?, String?> {
  const _ShortDateConverter();

  @override
  DateTime? fromJson(String? timestamp) => timestamp?.let(DateTime.parse);

  @override
  String? toJson(DateTime? date) =>
      date?.let((it) => DateFormat(Util.shortDateFormat).format(it));
}
