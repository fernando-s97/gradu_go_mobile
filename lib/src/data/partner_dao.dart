import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:gradu_go/src/domain/model/partner.dart';
import 'package:gradu_go/src/helpers/repository.dart';
import 'package:gradu_go/src/helpers/util.dart';

final class PartnerDao {
  static final _dio = Dio(BaseOptions(baseUrl: '${Util.urlServer}/parceiro'));
  static const urlReadByCitySegment = '/readByCidadeSegmento.php';

  static Future<List<Partner>> read(String? name) async {
    if (Util.isNullOrEmpty(name) && Repository.allPartners.isNotEmpty) {
      await Future.delayed(const Duration(seconds: 1));
      return Repository.allPartners;
    }

    final response =
        await postRequest('/read.php', data: {Partner.nameKey: name ?? ''});

    return parseResponse(response);
  }

  static Future<List<Partner>> readByCitySegment(
    String? city,
    String? segment,
  ) async {
    if (Util.isNullOrEmpty(city) &&
        Util.isNullOrEmpty(segment) &&
        Repository.allPartners.isNotEmpty) {
      await Future.delayed(const Duration(seconds: 1));
      return Repository.allPartners;
    }

    final response = await postRequest(
      urlReadByCitySegment,
      data: {
        Util.cityParameter: (city == Util.allCitiesKey ? null : city) ?? '',
        Util.segmentParameter:
            (segment == Util.allSegmentsKey ? null : segment) ?? '',
      },
    );

    return parseResponse(response);
  }

  static Future<Response> postRequest(
    String path, {
    required Map<String, String> data,
  }) async {
    try {
      return await _dio.post(path, data: jsonEncode(data));
    } on Exception {
      throw 'Falha ao obter retorno do servidor';
    }
  }

  static Future<List<Partner>> parseResponse(Response response) {
    try {
      return compute(parsePartners, response.data.toString());
    } on Exception {
      throw 'Falha ao recuperar parceiros';
    }
  }

  static List<Partner> parsePartners(String response) {
    return (json.decode(response) as List)
        .map((json) => Partner.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
