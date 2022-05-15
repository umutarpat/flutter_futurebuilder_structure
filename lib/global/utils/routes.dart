import 'package:flutter_futurebuilder_structure/global/bindings/home/home_binding.dart';
import 'package:flutter_futurebuilder_structure/modules/home/home_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/',
    page: () => HomeView(),
    binding: HomeBinding(),
  ),
];
