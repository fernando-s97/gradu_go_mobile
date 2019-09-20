import 'dart:convert';

import 'package:celebra_club/domain/partner.dart';
import 'package:celebra_club/helpers/repository.dart';
import 'package:celebra_club/helpers/util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class PartnerDao {
  static final _dio = Dio(BaseOptions(baseUrl: '${Util.URL_SERVER}/parceiro'));
  static const URL_READ_BY_CITY_SEGMENT = '/readByCidadeSegmento.php';

  static Future<List<Partner>> read(String name) async {
    if (Util.isNullOrEmpty(name) && Repository.allPartners.isNotEmpty) {
      await Future.delayed(Duration(seconds: 1));
      return Repository.allPartners;
    }

    final response =
        await postRequest('/read.php', data: {Partner.NAME_KEY: name ?? ''});

    return parseResponse(response);
  }

  static Future<List<Partner>> readByCitySegment(
      String city, String segment) async {
    if (Util.isNullOrEmpty(city) &&
        Util.isNullOrEmpty(segment) &&
        Repository.allPartners.isNotEmpty) {
      await Future.delayed(Duration(seconds: 1));
      return Repository.allPartners;
    }

    if (city == Util.ALL_CITIES_KEY) city = null;
    if (segment == Util.ALL_SEGMENTS_KEY) segment = null;

    final response = await postRequest(URL_READ_BY_CITY_SEGMENT, data: {
      Util.CITY_PARAMETER: city ?? '',
      Util.SEGMENT_PARAMETER: segment ?? ''
    });

    return parseResponse(response);
  }

  static Future<Response> postRequest(String path,
      {Map<String, String> data}) async {
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
    var decode = json.decode(response);
    var parse = decode.cast<Map<String, dynamic>>();

    return parse.map<Partner>((json) => Partner.fromJson(json)).toList();
  }
}
