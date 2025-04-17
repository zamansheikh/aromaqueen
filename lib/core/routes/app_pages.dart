import 'package:aromaqueen/features/auth/bindings/auth_binding.dart';
import 'package:aromaqueen/features/auth/views/new_password_view.dart';
import 'package:aromaqueen/features/auth/views/onboarding_view.dart';
import 'package:aromaqueen/features/auth/views/otp_verify_view.dart';
import 'package:aromaqueen/features/auth/views/sign_in_view.dart';
import 'package:aromaqueen/features/auth/views/sign_up_view.dart';
import 'package:aromaqueen/features/auth/views/verify_email_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.onboarding;

  static final routes = [
    // Auth Feature Routes
    GetPage(
      name: Routes.onboarding,
      page: () => const OnboardingView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signIn,
      page: () => const SignInView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signUp,
      page: () => const SignUpView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.verifyEmail,
      page: () => const VerifyEmailView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.otpVerify,
      page: () => const OtpVerifyView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.newPassword,
      page: () => const NewPasswordView(),
      binding: AuthBinding(),
    ),
  ];
}
