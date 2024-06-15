import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_http_client_response.freezed.dart';

@Freezed(copyWith: false)
class AppHttpClientResponse<T> with _$AppHttpClientResponse<T> {
  const factory AppHttpClientResponse({
    required int? statusCode,
    required T? body,
  }) = _AppHttpClientResponse;
}
