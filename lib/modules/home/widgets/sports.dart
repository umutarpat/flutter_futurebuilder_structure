import 'package:flutter/material.dart';
import 'package:flutter_futurebuilder_structure/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeViewSports extends StatelessWidget {
  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Text(
        "Sports: ${_homeController.sportsData.value.football!.length.toString()}");
  }
}
