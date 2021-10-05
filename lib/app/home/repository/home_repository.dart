import 'package:getx_starter_pattern/app/home/service/base/home_service.base.dart';
import 'package:getx_starter_pattern/app/home/service/home_service.dart';

class HomeRepository with HomeServiceBase {
  final HomeService homeService;

  HomeRepository(this.homeService) : assert(homeService != null);

  @override
  Future<String> getAllUsers(String userId) {
    return homeService.getAllUsers(userId);
  }
}
