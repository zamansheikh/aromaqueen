import 'package:aromaqueen/core/components/custom_button.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/routes/app_pages.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:aromaqueen/features/auth/views/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                iconRender(url: IconConst.logoIcon, size: 75),
                SizedBox(height: 20.h),
                Text(
                  "Create your Account",
                  style: GoogleFonts.roboto(
                    fontSize: 48.sp,
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.dark,
                  ),
                ),
                SizedBox(height: 20.h),
                CustomInputField(
                  controller: TextEditingController(),
                  title: "Name",
                ),
                SizedBox(height: 16.h),
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
                AuthCheckBox(
                  hasForgotPass: false,
                  title: "I agree to the processing of Personal date",
                ),
                SizedBox(height: 18.h),

                CustomButton(
                  btnTxt: "Sign Up",
                  onPressed: () {
                    // Todo: take the user to home page
                  },
                ),

                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.signIn);
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.teal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
