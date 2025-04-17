import 'package:aromaqueen/core/themes/app_theme.dart';
import 'package:aromaqueen/features/auth/controllers/auth_controller.dart';
import 'package:get/get.dart';



class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut<ThemeController>(() => ThemeController());
  }
}
