import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_starter_pattern/app/home/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: GetX<HomeController>(
        initState: (state) {
          Get.find<HomeController>().getAll();
        },
        builder: (homeController) {
          return Column(
            children: [
              Center(
                child: Text(homeController.userName),
              ),
          
            ],
          );
        },
      ),
    ));
  }
}
