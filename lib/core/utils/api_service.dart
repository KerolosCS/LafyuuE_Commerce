import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://student.valuxapps.com/api/';
  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}

// void main(List<String> args) async {
//   ApiService api = ApiService(Dio());
//   Map<String, dynamic> data = await api.get(endPoint: 'banners');
//   // data.forEach(
//   //   (key, value) {
//   //     print(value);
//   //   },
//   // );
//   data['data'].forEach((e) {
//     print(e);
//   });
// }
