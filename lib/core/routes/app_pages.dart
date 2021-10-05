import 'package:get/get.dart';
import 'package:getx_starter_pattern/app/home/bindings/home_binding.dart';
import 'package:getx_starter_pattern/app/home/ui/home_page.dart';
import 'package:getx_starter_pattern/core/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL, page: () => HomePage(), binding: HomeBinding())
  ];
}
