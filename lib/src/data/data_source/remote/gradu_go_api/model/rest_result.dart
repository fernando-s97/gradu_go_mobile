import 'package:freezed_annotation/freezed_annotation.dart';

part 'rest_result.freezed.dart';

@Freezed(
  copyWith: false,
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class RestResult<T> with _$RestResult<T> {
  const factory RestResult.networkError() = RestResultNetworkError;

  const factory RestResult.ok({required T value}) = RestResultOk;

  const factory RestResult.notFound() = RestResultNotFound;

  const factory RestResult.parseError({required String message}) =
      RestResultParseError;

  const factory RestResult.unknown({required int statusCode}) =
      RestResultUnknown;
}
