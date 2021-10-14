import 'dart:convert';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:getx_starter_pattern/app/home/model/user.dart';
import 'package:getx_starter_pattern/app/home/service/base/home_service.base.dart';

class HomeService with HomeServiceBase {
  final Dio _dio;

  HomeService(this._dio);

  @override
  Future<List<User>> getAllUsers() async {
    List<User> userList = [];

    try {
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
      var response =
          await _dio.get('https://jsonplaceholder.typicode.com/users');

      if (response.statusCode == 200) {
        print(response.data.toString());
        userList = userFromJson(json.encode(response.data));
        return userList;
      } else {
        return userList;
      }
    } on DioError catch (ex) {
      return userList;
    }
  }
}
