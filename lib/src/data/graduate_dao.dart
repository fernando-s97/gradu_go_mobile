import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:gradu_go/src/domain/model/graduate.dart';
import 'package:gradu_go/src/helpers/util.dart';

final class GraduateDao {
  static final _dio = Dio(BaseOptions(baseUrl: '${Util.urlServer}/formando'));

  static Future<String> authenticate(String? user, String? password) async {
    if (Util.isNullOrEmpty(user) || Util.isNullOrEmpty(password)) {
      return '-1';
    }

    final Response response = await postRequest(
      '/authenticate.php',
      data: {
        Graduate.userKey: user ?? '',
        Graduate.passwordKey: password ?? '',
      },
    );

    return (jsonDecode(response.data.toString()) as List).first as String;
  }

  static Future<List<Graduate>> read(String? user) async {
    final response =
        await postRequest('/read.php', data: {Graduate.userKey: user ?? ''});

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

  static Future<List<Graduate>> parseResponse(Response response) {
    try {
      return compute(parseGraduates, response.data.toString());
    } on Exception {
      throw 'Falha ao recuperar formandos';
    }
  }

  static List<Graduate> parseGraduates(String response) {
    return (json.decode(response) as List)
        .map((json) => Graduate.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
