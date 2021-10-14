import 'dart:convert';

import 'package:getx_starter_pattern/app/home/model/user.dart';
import 'package:getx_starter_pattern/app/home/service/base/home_service.base.dart';
import 'package:http/http.dart' as http;

class HomeService with HomeServiceBase {
  final http.Client httpClient;

  HomeService(this.httpClient);

  @override
  Future<List<User>> getAllUsers() async {
    List<User> userList = [];

    // String url = "https://jsonplaceholder.typicode.com/users";
    const _authority = "jsonplaceholder.typicode.com";
    const _path = "/users";
    final _uri = Uri.https(_authority, _path);
    var responses = await http.get(_uri);

    print(responses);

    if (responses.statusCode == 200) {
      var decodedJson = jsonDecode(responses.body);
      userList = userFromJson(decodedJson);
    } else {
      return userList;
    }
    return userList;
  }
}
