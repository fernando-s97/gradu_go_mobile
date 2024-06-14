import 'package:dio/dio.dart';
import 'package:gradu_go/src/core/extensions/generic_extensions.dart';
import 'package:gradu_go/src/data/http_client/model/app_http_client_base_options.dart';
import 'package:gradu_go/src/data/http_client/model/app_http_client_response.dart';

abstract interface class AppHttpClient {
  const AppHttpClient();

  Future<AppHttpClientResponse<T>> get<T>(
    String path, {
    Map<String, Object?>? queryParameters,
  });

  Future<AppHttpClientResponse<T>> post<T>(String path, {Object? data});
}

final class AppHttpClientBuilder {
  AppHttpClientBaseOptions? _baseOptions;

  AppHttpClientBuilder baseOptions(AppHttpClientBaseOptions? baseOptions) {
    _baseOptions = baseOptions;
    return this;
  }

  AppHttpClient build() {
    return DioAppHttpClient(
      baseOptions: _baseOptions?.let((it) {
        return BaseOptions(baseUrl: it.url ?? '');
      }),
    );
  }
}

final class DioAppHttpClient implements AppHttpClient {
  DioAppHttpClient({required BaseOptions? baseOptions})
      : _dio = Dio(baseOptions);

  final Dio _dio;

  @override
  Future<AppHttpClientResponse<T>> get<T>(
    String path, {
    Map<String, Object?>? queryParameters,
  }) async {
    return _dio
        .get<T>(path, queryParameters: queryParameters)
        .then((it) => it.toAppResponse());
  }

  @override
  Future<AppHttpClientResponse<T>> post<T>(String path, {Object? data}) {
    return _dio.post<T>(path, data: data).then((it) => it.toAppResponse());
  }
}

extension _AppResponseMapper<T> on Response<T> {
  AppHttpClientResponse<T> toAppResponse() {
    return AppHttpClientResponse<T>(statusCode: statusCode, body: data);
  }
}
