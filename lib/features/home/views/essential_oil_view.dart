import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
import 'package:aromaqueen/core/wrapper/bottom_sheet_wrapper.dart';
import 'package:aromaqueen/features/home/views/recipe_detail_screen.dart';
import 'package:aromaqueen/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EssentialOilView extends StatefulWidget {
  const EssentialOilView({super.key});

  @override
  State<EssentialOilView> createState() => _EssentialOilViewState();
}

class _EssentialOilViewState extends State<EssentialOilView> {
  final List<String> categories = [
    'Gesundheit',
    'Feel good',
    'Beauty',
    'Haushalt',
    'Kinder (Upgrade)',
    'Senioren (Upgrade)',
    'Tiere (Upgrade)',
    'Hormon-Balance (Upgrade)',
    'Aroma Massagen (Upgrade)',
    'Aura/Chakra (Upgrade)',
    'Meditation/ Yoga (Upgrade)',
  ];

  final Map<String, List<String>> categoryItems = {
    'Gesundheit': ['Akne', 'Angina', 'Herpes', 'Husten', 'Warzen'],
    'Feel good': ['Relaxation', 'Mood Boost', 'Energy'],
    'Beauty': ['Skin Care', 'Hair Growth', 'Lip Balm'],
    'Haushalt': ['Cleaner', 'Disinfectant'],
    // ... add more
  };

  String selectedCategory = 'Gesundheit';

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
              const SizedBox(height: 16),

              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Use the keyword search',
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
                          children: [
                            CircleAvatar(
                              radius: 100,
                              child: imageRender(
                                url: ImageConstants.hotline,
                                width: 200.w,
                                height: 200.h,
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
                  child: CircleAvatar(
                    radius: 36,
                    child: imageRender(
                      url: ImageConstants.hotline,
                      width: 120,
                      height: 120,
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
}
