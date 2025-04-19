import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AromaCard extends StatelessWidget {
  const AromaCard({
    super.key,
    required this.title,
    required this.content,
    this.hasStar = true,
  });

  final String title;
  final String content;
  final bool hasStar;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        border: Border.all(color: ColorConstants.primaryLight),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),

      child: Column(
        children: [
          imageRender(
            url: ImageConstants.onBoardingImage,
            width: Get.width,
            height: 180.h,
          ),
          SizedBox(height: 16.h),
          Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: ColorConstants.dark,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            content,
            style: GoogleFonts.roboto(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: ColorConstants.gray,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.h),
          if (hasStar)
            StarRating(
              rating: 4,
              allowHalfRating: false,
              onRatingChanged: (rating) {
                debugPrint("=====>>>> Rating: $rating");
              },
            ),
        ],
      ),
    );
  }
}
