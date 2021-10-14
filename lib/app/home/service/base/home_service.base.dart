import 'package:getx_starter_pattern/app/home/model/user.dart';

abstract class HomeServiceBase {
  Future<List<User>> getAllUsers();
}
