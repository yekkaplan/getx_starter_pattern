import 'package:getx_starter_pattern/app/home/model/user.dart';
import 'package:getx_starter_pattern/app/home/service/base/home_service.base.dart';
import 'package:getx_starter_pattern/app/home/service/home_service.dart';

class HomeRepository with HomeServiceBase {
  final HomeService homeService;

  HomeRepository(this.homeService) : assert(homeService != null);

  @override
  Future<List<User>> getAllUsers() async {
    return  await homeService.getAllUsers();
  }
}
