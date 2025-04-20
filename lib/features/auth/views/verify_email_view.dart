import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_button.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/routes/app_pages.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    final lcl = AppLocalizations.of(context); // shorthand
    return Scaffold(
      appBar: customAppbar1(title: lcl!.forgetPass),
      body: PaddingWrapper(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Column(
              spacing: 24.h,
              children: [
                Text(
                  lcl.forgetPassTitle,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: ColorConstants.darkGray,
                  ),
                ),
                CustomInputField(
                  controller: TextEditingController(),
                  title: "Email",
                  isEmail: true,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 40.h),
              child: CustomButton(
                btnTxt: lcl.continueText,
                onPressed: () {
                  Get.toNamed(Routes.otpVerify);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
