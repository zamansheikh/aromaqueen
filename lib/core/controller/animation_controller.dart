import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class FlutterAnimationController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // ? what does late keyword means?
  late AnimationController _controller;

  late Animation<double> animaiton;

  @override
  void onInit() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    animaiton = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.repeat();

    super.onInit();
  }

  @override
  void onClose() {
    _controller.dispose();
    super.onClose();
  }

  Animation<double> get spinAnimation => animaiton;
}
