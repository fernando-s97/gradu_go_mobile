import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:gradu_go/src/domain/model/event.dart';
import 'package:gradu_go/src/helpers/util.dart';

final class EventDao {
  static final _dio = Dio(BaseOptions(baseUrl: '${Util.urlServer}/evento'));

  static Future<List<Event>> read() async {
    final response = await postRequest('/read.php');

    return parseResponse(response);
  }

  static Future<Response> postRequest(
    String path, {
    Map<String, String>? data,
  }) async {
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
    return (json.decode(response) as List)
        .map((json) => Event.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
