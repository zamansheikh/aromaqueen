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
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewPasswordView extends StatelessWidget {
  NewPasswordView({super.key});
  final FlutterAnimationController controller =
      Get.find<FlutterAnimationController>();

  @override
  Widget build(BuildContext context) {
    final lcl = AppLocalizations.of(context);
    return Scaffold(
      appBar: customAppbar1(title: lcl!.forgetPass),
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
                  lcl.newPassTitle,
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
                btnTxt: lcl.continueText,
                onPressed: () {
                  showAlertLoader(
                    spinController: controller.spinAnimation,
                    nextRoute: Routes.signIn,
                    body: lcl.congratsContent,
                    title: lcl.congratulations,
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
