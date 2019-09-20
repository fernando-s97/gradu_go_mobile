import 'dart:convert';

import 'package:celebra_club/domain/event.dart';
import 'package:celebra_club/helpers/util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class EventDao {
  static final _dio = Dio(BaseOptions(baseUrl: '${Util.URL_SERVER}/evento'));

  static Future<List<Event>> read() async {
    final response = await postRequest('/read.php');

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

  static Future<List<Event>> parseResponse(Response response) {
    try {
      return compute(parseEvents, response.data.toString());
    } on Exception {
      throw 'Falha ao recuperar eventos';
    }
  }

  static List<Event> parseEvents(String response) {
    var decode = json.decode(response);
    var parse = decode.cast<Map<String, dynamic>>();

    return parse.map<Event>((json) => Event.fromJson(json)).toList();
  }
}
