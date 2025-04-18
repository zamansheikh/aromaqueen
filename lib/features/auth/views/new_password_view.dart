import 'package:aromaqueen/core/components/custom_alert_loader.dart';
import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_button.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/controller/animation_controller.dart';
import 'package:aromaqueen/core/routes/app_pages.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPasswordView extends StatelessWidget {
  NewPasswordView({super.key});
  final FlutterAnimationController controller =
      Get.find<FlutterAnimationController>();

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
                  showAlertLoader(
                    spinController: controller.spinAnimation,
                    nextRoute: Routes.signIn,
                    body:
                        "Your account is ready to use. You will be redirected to the Home page in a few seconds..",
                    title: "Congratulations!",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
