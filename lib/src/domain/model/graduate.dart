import 'package:freezed_annotation/freezed_annotation.dart';

part 'graduate.freezed.dart';

@Freezed()
class Graduate with _$Graduate {
  const factory Graduate({
    required String id,
    required String name,
    required String program,
    required String institution,
    required String clientCode,
    required String project,
    required DateTime graduationDate,
    required GraduateCredential credential,
  }) = _Graduate;
}

@Freezed(copyWith: false)
class GraduateCredential with _$GraduateCredential {
  const factory GraduateCredential({
    required String email,
    required String password,
  }) = _GraduateCredential;
}
