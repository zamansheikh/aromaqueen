import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
import 'package:aromaqueen/core/wrapper/bottom_sheet_wrapper.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar2(),
      body: Column(
        children: [
          homeHeader(),
          SizedBox(height: 24.h),
          PaddingWrapper(
            child: Column(
              children: [
                contactHotline(),
                SizedBox(height: 24.h),
                CustomInputField(
                  controller: TextEditingController(),
                  postfixIcon: IconConst.searchIcon,
                  isCircular: true,
                  hintText: "Use the keyword search ",
                ),
                SizedBox(height: 24.h),
                homeBottom(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Below start the ui functions

  Row homeBottom() {
    return Row(
      spacing: 24.w,
      children: [
        Column(
          spacing: 16.h,
          children: [
            iconRender(url: IconConst.noteIcon, size: 40),
            iconRender(url: IconConst.heartIcon, size: 40),
            iconRender(url: IconConst.piggyIcon, size: 40),
          ],
        ),
        Flexible(
          child: Stack(
            children: [
              imageRender(
                url: ImageConstants.onBoardingImage,
                width: double.maxFinite,
                height: 186.h,
                borderRadius: 25.r,
              ),

              Positioned(
                top: (186.h - 110.h) / 2,
                left: (Get.width - 254.w) / 8,
                child: SizedBox(
                  height: 110.h,
                  width: 254.w,
                  child: Column(
                    children: [
                      imageRender(
                        url: ImageConstants.logo,
                        width: 70.w,
                        height: 70.h,
                      ),
                      Text(
                        "Advertising Space, Slider",
                        style: GoogleFonts.roboto(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorConstants.dark,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row contactHotline() {
    return Row(
      spacing: 12.w,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8.h,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showBottomSheetWrapper(
                      title: "Aroma Experten-Hotline",
                      child: SizedBox(
                        width: Get.width,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 100,
                              child: imageRender(
                                url: ImageConstants.hotline,
                                width: 200.w,
                                height: 200.h,
                              ),
                            ),
                            SizedBox(height: 32.h),
                            iconRender(
                              url: IconConst.callHotlineIcon,
                              size: 40,
                            ),
                            SizedBox(height: 16.h),
                            Text(
                              "Aroma Expert Hotline",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 24.sp,
                                color: ColorConstants.dark,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              "Would you like a personalized consultation with a trained aroma expert?",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: ColorConstants.gray,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 24.h),
                            Text(
                              "We are happy to assist you on our hotline.Per minute: xx Call 0800xxxx",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: ColorConstants.gray,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 24.h),
                            iconRender(url: IconConst.emailIcon, size: 50),
                          ],
                        ),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    radius: 36,
                    child: imageRender(
                      url: ImageConstants.hotline,
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Aroma Experten-Hotline",
              style: GoogleFonts.roboto(
                fontSize: 8.sp,
                fontWeight: FontWeight.w500,
                color: ColorConstants.darkGray,
              ),
            ),
          ],
        ),

        Flexible(
          child: Column(
            spacing: 8.h,
            children: [
              Text(
                "Great to have you here, Tanja!",
                style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.darkGray,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "If you need help or personal advice, just click on my photo.",
                style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.darkGray,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Stack homeHeader() {
    return Stack(
      children: [
        imageRender(
          url: ImageConstants.onBoardingImage,
          width: Get.width,
          height: 200.h,
        ),
        Positioned(
          top: (200.h - 80.h) / 2,
          left: (Get.width - 170.w) / 8,

          child: SizedBox(
            width: 170.w,
            height: 90.h,
            child: Column(
              children: [
                Text(
                  "Competition!",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                    color: ColorConstants.white,
                  ),
                ),
                Text(
                  "Inspire the community with your DIY project.",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: ColorConstants.lightGray,
                  ),
                ),
                Text(
                  "Read More..",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: ColorConstants.lightGray,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
