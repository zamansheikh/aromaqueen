import 'package:aromaqueen/core/components/bottom_navigation.dart';
import 'package:aromaqueen/core/components/custom_button.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:aromaqueen/features/home/views/essential_oil_2.dart';
import 'package:aromaqueen/features/home/views/essential_oil_view.dart';
import 'package:aromaqueen/features/home/views/home_view.dart';
import 'package:aromaqueen/features/home/views/menu_screen.dart';
import 'package:aromaqueen/features/home/views/payment_screen.dart';
import 'package:aromaqueen/features/home/views/privacy_policy_screen.dart';
import 'package:aromaqueen/features/home/views/recepies_screen.dart';
import 'package:aromaqueen/features/home/views/upgrade_plan_screen.dart';
import 'package:aromaqueen/features/home/views/user_profile_screen.dart';
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
          EssentialOilView(),
          TemporaryScreen(),
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


class TemporaryScreen extends StatelessWidget {
  const TemporaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaddingWrapper(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            CustomButton(btnTxt: "Recepie screen", onPressed: () => Get.to(RecipesScreen())),
            CustomButton(btnTxt: "essential oil 2 screen", onPressed: () => Get.to(EssentialOil2())),
            CustomButton(btnTxt: "Menu screen", onPressed: () => Get.to(MenuScreen())),
            CustomButton(btnTxt: "Payment screen", onPressed: () => Get.to(PaymentScreen())),
            CustomButton(btnTxt: "Privacy Policy screen", onPressed: () => Get.to(PrivacyPolicyScreen())),
            CustomButton(btnTxt: "Upgrade Plan screen", onPressed: () => Get.to(UpgradePlanScreen())),
            CustomButton(btnTxt: "User Profile screen", onPressed: () => Get.to(UserProfileScreen())),
          ],
        ),
      ),
    );
  }
}