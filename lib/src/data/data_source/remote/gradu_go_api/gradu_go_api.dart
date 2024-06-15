import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/model/gradu_go_event.dart';
import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/model/gradu_go_graduate.dart';
import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/model/gradu_go_partner.dart';
import 'package:gradu_go/src/data/data_source/remote/gradu_go_api/model/rest_result.dart';
import 'package:gradu_go/src/data/data_source/remote/http_client/app_http_client.dart';
import 'package:gradu_go/src/data/data_source/remote/http_client/model/app_http_client_base_options.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class GraduGoApi {
  final AppHttpClient _httpClient = AppHttpClientBuilder()
      .baseOptions(
        const AppHttpClientBaseOptions(
          url: 'https://www.fernandosantos.tk/gradugo/api',
        ),
      )
      .build();

  Future<RestResult<List<GraduGoEvent>>> getEvents() async {
    final response = await _httpClient.get<List>('/events');

    return switch (response.statusCode) {
      null => const RestResultNetworkError(),
      200 => () {
          try {
            return RestResultOk(
              value: response.body!.map((json) {
                return GraduGoEvent.fromJson(json as Map<String, dynamic>);
              }).toList(),
            );
          } catch (e) {
            return RestResultGenericError<List<GraduGoEvent>>(
              message: e.toString(),
            );
          }
        }(),
      final int statusCode =>
        RestResultUnknownStatusCode(statusCode: statusCode),
    };
  }

  Future<RestResult<List<GraduGoPartner>>> getPartners({
    String? name,
    String? city,
    String? segment,
  }) async {
    final response = await _httpClient.get<List>(
      '/partners',
      queryParameters: {'name': name, 'city': city, 'segment': segment},
    );

    return switch (response.statusCode) {
      null => const RestResultNetworkError(),
      200 => () {
          try {
            return RestResultOk(
              value: response.body!.map((json) {
                return GraduGoPartner.fromJson(json as Map<String, dynamic>);
              }).toList(),
            );
          } catch (e) {
            return RestResultGenericError<List<GraduGoPartner>>(
              message: e.toString(),
            );
          }
        }(),
      final int statusCode =>
        RestResultUnknownStatusCode(statusCode: statusCode),
    };
  }

  Future<RestResult<String>> authenticateGraduate({
    required String email,
    required String password,
  }) async {
    final response = await _httpClient.post<String>(
      '/auth',
      data: {'email': email, 'password': password},
    );

    return switch (response.statusCode) {
      null => const RestResultNetworkError(),
      200 => () {
          try {
            return RestResultOk(value: response.body!);
          } catch (e) {
            return RestResultGenericError<String>(message: e.toString());
          }
        }(),
      final int statusCode =>
        RestResultUnknownStatusCode(statusCode: statusCode),
    };
  }

  Future<RestResult<GraduGoGraduate>> getGraduateDetails({
    required String id,
  }) async {
    final response = await _httpClient.get('/graduates/$id');

    return switch (response.statusCode) {
      null => const RestResultNetworkError(),
      200 => () {
          try {
            return RestResultOk(
              value: GraduGoGraduate.fromJson(
                response.body! as Map<String, dynamic>,
              ),
            );
          } catch (e) {
            return RestResultGenericError<GraduGoGraduate>(
              message: e.toString(),
            );
          }
        }(),
      404 => const RestResultNotFound(),
      final int statusCode =>
        RestResultUnknownStatusCode(statusCode: statusCode),
    };
  }
}