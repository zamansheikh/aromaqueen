import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
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
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [iconRender(url: IconConst.noteIcon)],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row contactHotline() {
    return Row(
      spacing: 12.w,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 36,
                  child: imageRender(
                    url: ImageConstants.hotline,
                    width: 120,
                    height: 120,
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
