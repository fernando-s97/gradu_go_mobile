import 'dart:convert';

import 'package:celebra_club/domain/graduate.dart';
import 'package:celebra_club/helpers/util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class GraduateDao {
  static final _dio = Dio(BaseOptions(baseUrl: '${Util.URL_SERVER}/formando'));

  static Future<String> authenticate(String user, String password) async {
    if (Util.isNullOrEmpty(user) || Util.isNullOrEmpty(password)) {
      return '-1';
    }

    final Response response = await postRequest('/authenticate.php', data: {
      Graduate.USER_KEY: user ?? '',
      Graduate.PASSWORD_KEY: password ?? ''
    });

    return jsonDecode(response.data.toString())[0];
  }

  static Future<List<Graduate>> read(String user) async {
    final response =
        await postRequest('/read.php', data: {Graduate.USER_KEY: user ?? ''});

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

  static Future<List<Graduate>> parseResponse(Response response) {
    try {
      return compute(parseGraduates, response.data.toString());
    } on Exception {
      throw 'Falha ao recuperar formandos';
    }
  }

  static List<Graduate> parseGraduates(String response) {
    var decode = json.decode(response);
    var parse = decode.cast<Map<String, dynamic>>();

    return parse.map<Graduate>((json) => Graduate.fromJson(json)).toList();
  }
}
