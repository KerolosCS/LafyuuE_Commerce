/*
 *
 * ----------------
 * | 241030072002 |
 * ----------------
 * Copyright © [2023] KERO CS FLUTTER DEVELOPMENT.
 * All Rights Reserved. For inquiries or permissions, contact  me ,
 * https://www.linkedin.com/in/kerolos-fady-software-engineer/
 *
 * /
 */

//All rights -- Kerolos Fady --Flutter Developer
import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://student.valuxapps.com/api/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({
    required String endPoint,
    String? auth,
  }) async {
    _dio.options = BaseOptions(baseUrl: _baseUrl, headers: {
      'lang': 'en',
      'Authorization': auth,
    });
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }

  Future<Map<String, dynamic>> postData(
      String end, Map<String, dynamic> data) async {
    _dio.options = BaseOptions(baseUrl: _baseUrl, headers: {'lang': 'en'});
    var response = await _dio.post('$_baseUrl$end', data: data);
    return response.data;
  }
}

// //lib\core\utils\api_service.dart
// void main(List<String> args) async {
//   ApiService api = ApiService(Dio());

//   var res = await api.postData(
//     'products/search',
//     {
//       "text": "apple",
//     },
//   );
//   // ignore: avoid_print
//   print(res['data']['data']);
// }
