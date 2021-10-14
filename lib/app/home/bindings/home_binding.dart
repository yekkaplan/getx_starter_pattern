import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_starter_pattern/app/home/controller/home_controller.dart';
import 'package:getx_starter_pattern/app/home/repository/home_repository.dart';
import 'package:getx_starter_pattern/app/home/service/home_service.dart';


class HomeBinding implements Bindings {

  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(HomeRepository(HomeService(Dio())));
    });
  }
}
