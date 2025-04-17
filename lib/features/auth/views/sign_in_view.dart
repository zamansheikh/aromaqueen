import 'package:aromaqueen/core/components/custom_button.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/routes/app_pages.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:aromaqueen/features/auth/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaddingWrapper(
        child: ListView(
          // List view with "reverse = true" is taken to start the widgets bottm up
          // the default is top to bottom
          reverse: true,
          children: [
            Column(
              children: [
                iconRender(url: IconConst.logoIcon, size: 120),
                SizedBox(height: 40.h),
                Text(
                  "Login to your Account",
                  style: GoogleFonts.roboto(
                    fontSize: 48.sp,
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.dark,
                  ),
                ),
                SizedBox(height: 24.h),
                CustomInputField(
                  controller: TextEditingController(),
                  isEmail: true,
                  title: "Email",
                ),
                SizedBox(height: 16.h),
                CustomInputField(
                  controller: TextEditingController(),
                  isPassword: true,
                  title: "Password",
                ),

                SizedBox(height: 12.h),
                AuthCheckBox(hasForgotPass: true, title: "Remember Me"),
                SizedBox(height: 24.h),

                CustomButton(
                  btnTxt: "Sign In",
                  onPressed: () {
                    // Todo: take the user to home page
                  },
                ),

                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.signUp);
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.teal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AuthCheckBox extends StatelessWidget {
  // This component contains remember me checkbox and
  // forget password text button that takes the user to the verify email page
  const AuthCheckBox({
    super.key,
    required this.title,
    required this.hasForgotPass,
  });
  final String title;
  final bool hasForgotPass;

  @override
  Widget build(BuildContext context) {
    // Initialize the controller
    final AuthController controller = Get.find<AuthController>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Remember Me Checkbox
        Row(
          children: [
            Obx(
              () => Checkbox(
                value: controller.isChecked.value,
                onChanged: (value) {
                  controller.isChecked.value = value!;
                },
                activeColor: Colors.teal,
                side: BorderSide(color: Colors.teal),
              ),
            ),
            Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 14.sp,
                color: ColorConstants.gray,
              ),
            ),
          ],
        ),
        // Forget Password Text Button
        if (hasForgotPass)
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.verifyEmail);
            },
            child: Text(
              'Forget Password?',
              style: GoogleFonts.roboto(
                fontSize: 14.sp,
                color: ColorConstants.primary,
              ),
            ),
          ),
      ],
    );
  }
}
