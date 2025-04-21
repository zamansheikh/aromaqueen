import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_button.dart';
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IncomeView extends StatelessWidget {
  const IncomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final lcl = AppLocalizations.of(context);
    return Scaffold(
      appBar: customAppbar2(hasNewsFeed: false),
      body: Column(
        children: [
          imageRender(
            url: ImageConstants.onBoardingImage,
            width: Get.width,
            height: 220.h,
          ),
          SizedBox(height: 20),
          PaddingWrapper(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lcl!.incomeSub1,
                  style: GoogleFonts.roboto(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.gray,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  lcl.incomeTitle,
                  style: GoogleFonts.roboto(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.darkGray,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  lcl.incomeSub2,
                  style: GoogleFonts.roboto(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.gray,
                  ),
                ),
                SizedBox(height: 24.h),
                CustomButton(btnTxt: lcl.registerNow, onPressed: () {}),
                SizedBox(height: 40.h),
                SizedBox(
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Your Income",
                        style: GoogleFonts.roboto(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorConstants.darkGray,
                        ),
                      ),
                      Text(
                        "EUR 1000.-",
                        style: GoogleFonts.roboto(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorConstants.darkGray,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PromoData {
  static const String title =
      'You think AromaQueen is a great idea and want to boost your pocket money?';
  static const String subtitle = 'Then promote AromaQueen!';
  static const String registerText =
      'Register today in the partner program: (LINK)';
  static const String buttonText = 'Register Now';
  static const String incomeText = 'Your Income\nEUR 1000.-';
}
