import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_button.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar1(title: "Forget Password"),
      body: PaddingWrapper(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Column(
              spacing: 24.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create Your New password",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: ColorConstants.darkGray,
                  ),
                ),
                CustomInputField(
                  controller: TextEditingController(),
                  title: "New Password",
                  isPassword: true,
                ),
                CustomInputField(
                  controller: TextEditingController(),
                  title: "Confirm New Password",
                  isPassword: true,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 40.h),
              child: CustomButton(
                btnTxt: "Continue",
                onPressed: () {
                
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
