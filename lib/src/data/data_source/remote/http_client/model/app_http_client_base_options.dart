import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_http_client_base_options.freezed.dart';

@Freezed(copyWith: false)
class AppHttpClientBaseOptions with _$AppHttpClientBaseOptions {
  const factory AppHttpClientBaseOptions({String? url}) =
      _AppHttpClientBaseOptions;
}
