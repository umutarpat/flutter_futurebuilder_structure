import 'package:flutter_futurebuilder_structure/global/models/astronomy_model/astronomy_model.dart';
import 'package:flutter_futurebuilder_structure/global/models/sports_model/sports_model.dart';
import 'package:flutter_futurebuilder_structure/global/services/home_service.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeController extends GetxController {
  final mainFuture = Future.wait([]).obs;
  final sportsData = SportsModel().obs;
  final sportsFuture = Future.value(SportsModel()).obs;
  final astronomyData = AstronomyModel().obs;
  final astronomyFuture = Future.value(AstronomyModel()).obs;

  @override
  void onInit() {
    super.onInit();
    updateMainFuture();
  }

  updateMainFuture() {
    getSports();
    getAstronomy();
    mainFuture.value = Future.wait([sportsFuture.value, astronomyFuture.value]);
    update(['main']);
  }

  assignFutures(List data) {
    final datas = [sportsData, astronomyData];
    data.forEach((element) {
      datas[data.indexOf(element)].value = element;
    });
  }

  getSports() {
    sportsFuture.value = sportsService();
  }

  getAstronomy() {
    astronomyFuture.value = astronomyService();
  }
}
