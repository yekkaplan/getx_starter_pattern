import 'package:get/get.dart';
import 'package:getx_starter_pattern/app/home/repository/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  RxString _userName = "".obs;
  HomeController(this.repository) : assert(repository != null);

  get userName => this._userName.value;

  set userName(value) => this._userName.value = value;

  getAll() async {
    var result = await repository.getAllUsers("1");
    this._userName.value = result;
  }
}
