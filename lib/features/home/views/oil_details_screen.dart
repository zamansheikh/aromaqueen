import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/features/home/views/custom_recepies_view.dart';
import 'package:aromaqueen/features/home/views/plant_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'oil_description_screen.dart';

class OilDetailsScreen extends StatefulWidget {
  final String? oilName; // Optional parameter for oil name
  const OilDetailsScreen({super.key, this.oilName});

  @override
  State<OilDetailsScreen> createState() => _OilDetailsScreenState();
}

class _OilDetailsScreenState extends State<OilDetailsScreen> {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar1(
        title:'Oil Details', // Use the oil name if provided
      ),
      backgroundColor: ColorConstants.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Divider(
              color: ColorConstants.lightGray,
              thickness: 1,
            ),
            // Oil Name Title
            Text(
              widget.oilName ?? 'Essential Oil',
              style: GoogleFonts.roboto(
                fontSize: 28.sp,
                fontWeight: FontWeight.w700,
                color: ColorConstants.dark,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            
            // Oil Sample Image
            Container(
              width: double.infinity,
              height: 180.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: ColorConstants.lightGray,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: Image.asset(
                  ImageConstants.oil, // Using existing sample image
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            ColorConstants.primary.withOpacity(0.3),
                            ColorConstants.primaryDark.withOpacity(0.3),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.local_florist,
                              size: 80.sp,
                              color: ColorConstants.primaryDark,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'Oil Sample',
                              style: GoogleFonts.roboto(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: ColorConstants.dark,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 32.h),
            
            // Three Buttons Row
            Row(
              children: [
                Expanded(
                  child: _buildActionButton(
                    title: 'Essential Oil',
                    icon: Icons.opacity,
                    onTap: () {
                      Get.to(
                        () => OilDescriptionScreen(oilName: widget.oilName),
                      );
                    },
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: _buildActionButton(
                    title: 'Plant Profile',
                    icon: Icons.eco,
                    onTap: () {
                      Get.to(()=>PlantDetailsScreen());
                    },
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: _buildActionButton(
                    title: 'Recipes',
                    icon: Icons.restaurant_menu,
                    onTap: () {
                      Get.to(()=>CustomRecipesView(
                        recipes: [
                          'Lavender Oil Diffuser Blend',
                          'Peppermint Foot Soak',
                          'Tea Tree Oil Cleaning Spray',
                        ],
                      ));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.w),
        decoration: BoxDecoration(
          color: ColorConstants.primary,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: ColorConstants.primaryDark.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 32.sp,
              color: ColorConstants.white,
            ),
            SizedBox(height: 8.h),
            Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: ColorConstants.white,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}