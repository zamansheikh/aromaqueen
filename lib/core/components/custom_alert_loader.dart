import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/routes/app_pages.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

showAlertLoader({
  required spinController,
  required title,
  required body,
  required nextRoute,
}) {
  return showDialog(
    context: Get.context!,
    builder: (context) {
      Future.delayed(Duration(seconds: 2), () {
        Get.back();
        Get.offAllNamed(nextRoute);
      });
      return AlertDialog(
        title: iconRender(url: IconConst.successIcon, size: 100),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20.h,
          children: [
            Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: ColorConstants.primary,
              ),
            ),
            Text(
              body,
              style: GoogleFonts.roboto(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorConstants.darkGray,
              ),
              textAlign: TextAlign.center,
            ),
            RotationTransition(
              turns: spinController,
              child: iconRender(url: IconConst.loadingIcon, size: 40),
            ),
          ],
        ),
      );
    },
  );
}
