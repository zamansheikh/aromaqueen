import 'package:aromaqueen/features/auth/bindings/auth_binding.dart';
import 'package:aromaqueen/features/auth/views/new_password_view.dart';
import 'package:aromaqueen/features/auth/views/onboarding_view.dart';
import 'package:aromaqueen/features/auth/views/otp_verify_view.dart';
import 'package:aromaqueen/features/auth/views/sign_in_view.dart';
import 'package:aromaqueen/features/auth/views/sign_up_view.dart';
import 'package:aromaqueen/features/auth/views/verify_email_view.dart';
import 'package:aromaqueen/features/home/bindings/home_binding.dart';
import 'package:aromaqueen/features/home/views/essential_oil_view.dart';
import 'package:aromaqueen/features/home/views/favourite_view.dart';
import 'package:aromaqueen/features/home/views/home_view.dart';
import 'package:aromaqueen/features/home/views/income_view.dart';
import 'package:aromaqueen/features/home/views/notes_view.dart';
import 'package:aromaqueen/features/home/views/recepies_view.dart';
import 'package:aromaqueen/features/main_page.dart';
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
      page: () => NewPasswordView(),
      binding: AuthBinding(),
    ),
    // Home Feature Routes
    GetPage(
      name: Routes.mainPage,
      page: () => MainPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.essentialOil,
      page: () => EssentialOilView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.favourite,
      page: () => FavouriteView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.income,
      page: () => IncomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.notes,
      page: () => NotesView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.recepies,
      page: () => RecipesView(),
      binding: HomeBinding(),
    ),
  ];
}
