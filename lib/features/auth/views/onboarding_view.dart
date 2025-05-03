import 'package:aromaqueen/core/components/custom_button.dart';
import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/routes/app_pages.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          imageRender(
            url: ImageConstants.onBoardingImage,
            width: Get.width,
            height: 212.h,
          ),
          SizedBox(height: 30.h),
          imageRender(url: ImageConstants.logo, width: 100.w, height: 100.h),
          SizedBox(height: 20.h),
          Text(
            AppLocalizations.of(context)!.onBoardingTitle,
            style: GoogleFonts.roboto(
              fontSize: 28.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            AppLocalizations.of(context)!.onBoardingContent1,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: ColorConstants.darkGray,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            AppLocalizations.of(context)!.onBoardingContent2,
            style: GoogleFonts.roboto(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: ColorConstants.gray,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 36.h),
          // Register button -> takes the user to sign in page
          PaddingWrapper(
            child: CustomButton(
              btnTxt: AppLocalizations.of(context)!.registerNow,
              onPressed: () {
                Get.toNamed(Routes.signIn);
              },
            ),
          ),
          SizedBox(height: 36.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Bellow are the social media sign in buttons
                GestureDetector(
                  onTap: () {},
                  child: iconRender(url: IconConst.appleIcon, size: 32),
                ),
                GestureDetector(
                  onTap: () {},
                  child: iconRender(url: IconConst.googleIcon, size: 32),
                ),
                GestureDetector(
                  onTap: () {},
                  child: iconRender(url: IconConst.facebookIcon, size: 32),
                ),
                GestureDetector(
                  onTap: () {},
                  child: iconRender(url: IconConst.instaIcon, size: 32),
                ),
              ],
            ),
          ),
          SizedBox(height: 36.h),
          PaddingWrapper(
            child: Text(
              AppLocalizations.of(context)!.onBoardingAgreement,
              style: GoogleFonts.roboto(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: ColorConstants.primaryDark,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
