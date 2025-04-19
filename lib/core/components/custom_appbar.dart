import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
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

PreferredSize customAppbar2() {
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
                GestureDetector(
                  onTap: () {
                    showBottomFeedSheet();
                  },
                  child: iconRender(url: IconConst.notificationIcon, size: 20),
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

void showBottomFeedSheet() {
  showModalBottomSheet(
    context: Get.context!,
    isScrollControlled: true, // Allows the sheet to take full height
    backgroundColor: Colors.transparent, // Transparent background
    builder:
        (context) => DraggableScrollableSheet(
          initialChildSize: 0.4, // Initial height (40% of screen)
          minChildSize: 0.2, // Minimum height (20% of screen)
          maxChildSize: 0.95, // Maximum height (95% of screen)
          builder: (context, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black12,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    // Drag handle
                    Container(
                      width: 40,
                      height: 5,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    // Sheet content
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
  );
}
