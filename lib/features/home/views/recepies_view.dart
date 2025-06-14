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




class RecipesView extends StatefulWidget {
  const RecipesView({super.key});

  @override
  State<RecipesView> createState() => _RecipesViewState();
}

class _RecipesViewState extends State<RecipesView> {  final List<String> categories = [
    'Skincare',
    'Hair Care',
    'Face Masks',
    'Body Care',
    'Anti-Aging',
    'Acne Treatment',
    'Lip Care',
    'Eye Care',
    'Aromatherapy',
    'Wellness',
    'Relaxation',
  ];

  final Map<String, List<String>> categoryItems = {
    'Skincare': ['Hydrating Face Serum', 'Gentle Cleansing Oil', 'Brightening Toner', 'Vitamin C Moisturizer', 'Rose Water Spray'],
    'Hair Care': ['Scalp Massage Oil', 'Hair Growth Serum', 'Deep Conditioning Mask', 'Anti-Dandruff Treatment', 'Shine Enhancing Spray'],
    'Face Masks': ['Purifying Clay Mask', 'Hydrating Honey Mask', 'Exfoliating Oatmeal Mask', 'Brightening Turmeric Mask', 'Anti-Aging Collagen Mask'],
    'Body Care': ['Moisturizing Body Butter', 'Exfoliating Sugar Scrub', 'Firming Body Oil', 'Cellulite Reduction Cream', 'Stretch Mark Prevention Oil'],
    'Anti-Aging': ['Wrinkle Reducing Serum', 'Firming Eye Cream', 'Collagen Boosting Mask', 'Retinol Night Treatment', 'Peptide Face Cream'],
    'Acne Treatment': ['Tea Tree Spot Treatment', 'Salicylic Acid Cleanser', 'Oil Control Toner', 'Pore Minimizing Serum', 'Blemish Clearing Mask'],
    'Lip Care': ['Moisturizing Lip Balm', 'Plumping Lip Gloss', 'Exfoliating Lip Scrub', 'Healing Lip Treatment', 'Tinted Lip Oil'],
    'Eye Care': ['Dark Circle Reducer', 'Puffy Eye Treatment', 'Lash Growth Serum', 'Eye Brightening Cream', 'Anti-Wrinkle Eye Gel'],
    'Aromatherapy': ['Stress Relief Blend', 'Energy Boosting Mix', 'Sleep Inducing Oil', 'Focus Enhancement Blend', 'Mood Lifting Spray'],
    'Wellness': ['Detox Body Wrap', 'Immune Boosting Blend', 'Digestive Support Oil', 'Headache Relief Roll-on', 'Muscle Pain Relief Balm'],
    'Relaxation': ['Bath Bomb Recipe', 'Meditation Oil Blend', 'Spa Day Face Mask', 'Relaxing Massage Oil', 'Calming Pillow Spray'],
  };

  String selectedCategory = 'Skincare';

  @override
  Widget build(BuildContext context) {
    final List<String> currentItems = categoryItems[selectedCategory] ?? [];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Top Row
              Row(
                children: [
                  Image.asset(ImageConstants.logo, height: 40),
                  const Spacer(),
                  const Icon(Icons.menu),
                ],
              ),
              const SizedBox(height: 16),              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search beauty recipes...',
                  suffixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              contactHotline(context),

              // Hotline Text + Avatar
              const SizedBox(height: 12),

              // Category Chips
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children:
                    categories.map((cat) {
                      final bool isSelected = cat == selectedCategory;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategory = cat;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color:
                                isSelected
                                    ? Colors.green.shade200
                                    : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            cat,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),

              const SizedBox(height: 12),

              // List Items
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: currentItems.length,
                  itemBuilder: (context, index) {
                    final item = currentItems[index];
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
                          children: [                            CircleAvatar(
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
