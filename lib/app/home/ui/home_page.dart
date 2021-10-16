import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_starter_pattern/app/home/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
      initState: (state) {
        Get.find<HomeController>().getAll();
      },
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Getx Pattern!"),
          ),
          body: SafeArea(
              child: Container(
            child: _.users.isNotEmpty
                ? ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_.users[index].name),
                      );
                    },
                    itemCount: _.users.length,
                  )
                : Container(
                    child: Center(child: Text("Yükleniyor")),
                  ),
          )),
        );
      },
    );
  }
}
