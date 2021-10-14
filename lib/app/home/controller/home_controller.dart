import 'package:get/get.dart';
import 'package:getx_starter_pattern/app/home/model/user.dart';
import 'package:getx_starter_pattern/app/home/repository/home_repository.dart';

import 'package:get/get.dart';
import 'package:getx_starter_pattern/app/home/repository/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository repository;

  List<User> _users = <User>[].obs;
  RxString _userName = "".obs;

  get users => _users;

  set users(value) {
    _users = value;
  }

  HomeController(this.repository) : assert(repository != null);

  get userName => this._userName.value;

  set userName(value) => this._userName.value = value;

  getAll() async {
    var fetchedUser = await repository.getAllUsers();

    print(fetchedUser);

    _users.assignAll(fetchedUser);

    this._userName.value = "asdasdasdss";
  }
}
