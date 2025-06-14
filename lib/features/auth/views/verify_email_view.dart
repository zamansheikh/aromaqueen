import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_button.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/routes/app_pages.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:aromaqueen/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: customAppbar1(title: AppLocalizations.of(context)!.forgetPass),
      body: PaddingWrapper(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Column(
              spacing: 24.h,
              children: [
                Text(
                  AppLocalizations.of(context)!.forgetPassTitle,
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
                btnTxt: AppLocalizations.of(context)!.continueText,
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
