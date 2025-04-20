import 'package:aromaqueen/core/components/aroma_card.dart';
import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
import 'package:aromaqueen/core/wrapper/bottom_sheet_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar customAppbar1({required title}) {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Icon(Icons.chevron_left, color: ColorConstants.dark, size: 24.sp),
    ),
    backgroundColor: ColorConstants.white,
    title: Text(
      title,
      style: GoogleFonts.roboto(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: ColorConstants.dark,
      ),
    ),
  );
}

PreferredSize customAppbar2({bool hasNewsFeed = true}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(60.h),
    child: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            imageRender(url: ImageConstants.logo, width: 50, height: 50),
            Row(
              spacing: 16.w,
              children: [
                if (hasNewsFeed)
                  GestureDetector(
                    onTap: () {
                      showBottomSheetWrapper(
                        title: "News Feed",
                        child: NewsFeed(),
                      );
                    },
                    child: iconRender(
                      url: IconConst.notificationIcon,
                      size: 20,
                    ),
                  ),
                iconRender(url: IconConst.hamburgerIcon, size: 20),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

class NewsFeed extends StatelessWidget {
  const NewsFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AromaCard(
          title: "Advirtising Space, Slider",
          content:
              "If you need help or personal advice, just click on my photo.If you need help or personal advice, just click on my photo.",
        ),
        AromaCard(
          title: "Advirtising Space, Slider",
          content:
              "If you need help or personal advice, just click on my photo.If you need help or personal advice, just click on my photo.",
        ),
        AromaCard(
          title: "Advirtising Space, Slider",
          content:
              "If you need help or personal advice, just click on my photo.If you need help or personal advice, just click on my photo.",
        ),
        AromaCard(
          title: "Advirtising Space, Slider",
          content:
              "If you need help or personal advice, just click on my photo.If you need help or personal advice, just click on my photo.",
        ),
      ],
    );
  }
}
