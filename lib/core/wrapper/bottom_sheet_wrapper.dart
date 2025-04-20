import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void showBottomSheetWrapper({required String title, required Widget child}) {
  showModalBottomSheet(
    context: Get.context!,
    isScrollControlled: true, // Allows the sheet to take full height
    backgroundColor: Colors.transparent, // Transparent background
    builder:
        (context) => DraggableScrollableSheet(
          initialChildSize: 0.75, // Initial height (40% of screen)
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
                    PaddingWrapper(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header of the bottom sheet
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 16.w,
                                children: [
                                  imageRender(
                                    url: ImageConstants.logo,
                                    width: 32.w,
                                    height: 30.h,
                                  ),
                                  Text(
                                    title,
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: ColorConstants.dark,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () => Get.back(),
                                icon: Icon(Icons.close),
                              ),
                            ],
                          ),

                          // Header sheet content goes here
                          child,
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
