import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/features/home/views/recipe_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/icon_const.dart';
import '../../../core/constants/image_constants.dart';
import '../../../core/themes/color_constants.dart';
import '../../../core/utils/icon_render.dart';
import '../../../core/utils/image_render.dart';
import '../../../core/wrapper/bottom_sheet_wrapper.dart';
import '../../../l10n/app_localizations.dart';




class CustomRecipesView extends StatefulWidget {
  final List<String> recipes;
  const CustomRecipesView({super.key, required this.recipes});

  @override
  State<CustomRecipesView> createState() => _CustomRecipesViewState();
}

class _CustomRecipesViewState extends State<CustomRecipesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar1(title: "Recipes"),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              contactHotline(context),

              // Hotline Text + Avatar
              const SizedBox(height: 12),

              // List Items
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: widget.recipes.length,
                  itemBuilder: (context, index) {
                    final item = widget.recipes[index];
                    return InkWell(
                      onTap: () {
                        print("Show Details for $item");
                        Get.to(RecipeDetailScreen(title: item));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          '${String.fromCharCode(65 + index)}. $item',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
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
                            CircleAvatar(
                              radius: 100,
                              child: ClipOval(
                                child: imageRender(
                                  url: ImageConstants.hotline,
                                  width: 200.w,
                                  height: 200.h,
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
                  },                  child: CircleAvatar(
                    radius: 60,
                    child: ClipOval(
                      child: imageRender(
                        url: ImageConstants.hotline,
                        width: 120,
                        height: 120,
                      ),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8.h,
            children: [
              Text(
                AppLocalizations.of(context)!.homeCallNowTitle,
                style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.darkGray,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                AppLocalizations.of(context)!.homeCallNowContent,
                style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.darkGray,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
