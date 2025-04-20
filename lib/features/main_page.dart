import 'package:aromaqueen/core/components/bottom_navigation.dart';
import 'package:aromaqueen/features/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  /*
  This is class's only purpose is to render the same bottom 
  navigation bar across all the pages. 
  */
  MainPage({super.key});

  final PageController controller = PageController();
  final RxInt index = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          index.value = value;
        },
        children: [
          HomeView(),
          Scaffold(body: Center(child: Text("Hello world"))),
          HomeView(),
          HomeView(),
        ],
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigation(
          menuIndex: index.value,
          onChanged: (idx) {
            controller.animateToPage(
              idx,
              duration: const Duration(milliseconds: 300),
              curve: Curves.decelerate,
            );
          },
        );
      }),
    );
  }
}
