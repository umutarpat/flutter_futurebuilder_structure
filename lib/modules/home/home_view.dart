import 'package:flutter/material.dart';
import 'package:flutter_futurebuilder_structure/modules/home/controllers/home_controller.dart';
import 'package:flutter_futurebuilder_structure/modules/home/widgets/astronomy.dart';
import 'package:flutter_futurebuilder_structure/modules/home/widgets/sports.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Future Builder"),
        ),
        body: SingleChildScrollView(
            child: GetBuilder<HomeController>(
                id: 'main',
                builder: (controller) {
                  return Column(
                    children: [
                      FutureBuilder(
                          future: controller.mainFuture.value,
                          builder: (context, snapshot) {
                            switch (snapshot.connectionState) {
                              case ConnectionState.active:
                              case ConnectionState.waiting:
                                return const Center(
                                    child: CircularProgressIndicator());
                              case ConnectionState.done:
                                if (snapshot.hasError) {
                                  return Container();
                                }
                                controller
                                    .assignFutures((snapshot.data! as List));
                                return SizedBox(
                                  height: context.height,
                                  width: context.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      HomeViewSports(),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      HomeViewAstronomy()
                                    ],
                                  ),
                                );
                              default:
                                return const Center(
                                    child: CircularProgressIndicator());
                            }
                          })
                    ],
                  );
                })));
  }
}
