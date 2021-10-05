import 'package:getx_starter_pattern/app/home/service/base/home_service.base.dart';
import 'package:http/http.dart' as http;

class HomeService with HomeServiceBase {
  final http.Client httpClient;
  HomeService(this.httpClient);
  @override
  Future<String> getAllUsers(String userId) async {
    return "user";
  }
}
