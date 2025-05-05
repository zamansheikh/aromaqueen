import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/routes/app_pages.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
import 'package:aromaqueen/core/wrapper/bottom_sheet_wrapper.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:aromaqueen/l10n/app_localizations.dart';
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
                contactHotline(context),
                SizedBox(height: 24.h),
                InkWell(
                  onTap: () => Get.toNamed(Routes.search),
                  child: CustomInputField(
                    isEnabled: false,
                    controller: TextEditingController(),
                    postfixIcon: IconConst.searchIcon,
                    isCircular: true,
                    hintText: "Use the keyword search ",
                  ),
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
            GestureDetector(
              onTap: () => Get.toNamed(Routes.notes),
              child: iconRender(url: IconConst.noteIcon, size: 40),
            ),
            GestureDetector(
              onTap: () => Get.toNamed(Routes.favourite),
              child: iconRender(url: IconConst.heartIcon, size: 40),
            ),
            GestureDetector(
              onTap: () => Get.toNamed(Routes.income),
              child: iconRender(url: IconConst.piggyIcon, size: 40),
            ),
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

  Row contactHotline(context) {
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
                      title: AppLocalizations.of(context)!.hotLineTitle,
                      child: SizedBox(
                        width: Get.width,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: ColorConstants.primaryDark,
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(8),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(86.r),
                                child: imageRender(
                                  url: ImageConstants.hotline,
                                  width: 172.w,
                                  height: 172.h,
                                ),
                              ),
                            ),
                            SizedBox(height: 32.h),
                            iconRender(
                              url: IconConst.callHotlineIcon,
                              size: 40,
                            ),
                            SizedBox(height: 16.h),
                            Text(
                              AppLocalizations.of(context)!.hotLineTitle,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 24.sp,
                                color: ColorConstants.dark,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              AppLocalizations.of(context)!.hotLineConent1,
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: ColorConstants.gray,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 24.h),
                            Text(
                              AppLocalizations.of(context)!.hotLineConent2,
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(36.r),
                    child: imageRender(
                      url: ImageConstants.hotline,
                      width: 72.w,
                      height: 72.w,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              AppLocalizations.of(context)!.homeCallNowIntro,
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
                AppLocalizations.of(context)!.homeCallNowTitle,
                style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.darkGray,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                AppLocalizations.of(context)!.homeCallNowContent,
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
