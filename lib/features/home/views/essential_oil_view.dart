import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
import 'package:aromaqueen/core/wrapper/bottom_sheet_wrapper.dart';
import 'package:aromaqueen/features/home/views/oil_details_screen.dart';
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
  // Beauty-related essential oils
  final List<String> allOils = [
    'Lavender Oil',
    'Rose Oil',
    'Jojoba Oil',
    'Argan Oil',
    'Tea Tree Oil',
    'Rosehip Oil',
    'Vitamin E Oil',
    'Sweet Almond Oil',
    'Coconut Oil',
    'Geranium Oil',
    'Frankincense Oil',
    'Chamomile Oil',
    'Ylang Ylang Oil',
    'Bergamot Oil',
    'Lemon Oil',
    'Peppermint Oil',
    'Eucalyptus Oil',
    'Rosemary Oil',
    'Sandalwood Oil',
    'Neroli Oil',
    'Jasmine Oil',
    'Patchouli Oil',
    'Carrot Seed Oil',
    'Grapeseed Oil',
    'Avocado Oil',
    'Evening Primrose Oil',
    'Marula Oil',
    'Squalane Oil',
    'Ceramide Oil',
    'Hyaluronic Acid Oil',
  ];

  List<String> filteredOils = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredOils = List.from(allOils); // Initially show all oils
    searchController.addListener(_filterOils);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _filterOils() {
    setState(() {
      if (searchController.text.isEmpty) {
        filteredOils = List.from(allOils);
      } else {
        filteredOils = allOils
            .where((oil) =>
                oil.toLowerCase().contains(searchController.text.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search for essential oils...',
                  suffixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              contactHotline(context),

              const SizedBox(height: 16),

              // Results Count
              Align(
                alignment: Alignment.center,
                child: Text(
                  '${filteredOils.length} oils found',
                  style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.gray,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Essential Oils List
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  itemCount: filteredOils.length,
                  itemBuilder: (context, index) {
                    final oil = filteredOils[index];
                    return InkWell(
                      onTap: () {
                        Get.to(OilDetailsScreen(oilName: oil));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 12.h),
                        padding: EdgeInsets.all(16.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: ColorConstants.lightGray),
                          boxShadow: [
                            BoxShadow(
                              color: ColorConstants.gray.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            // Oil Icon/Image
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                color: ColorConstants.primaryLight,
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              child: Icon(
                                Icons.eco,
                                color: ColorConstants.primary,
                                size: 24.sp,
                              ),
                            ),
                            SizedBox(width: 16.w),
                            // Oil Name
                            Expanded(
                              child: Text(
                                oil,
                                style: GoogleFonts.roboto(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: ColorConstants.dark,
                                ),
                              ),
                            ),
                            // Arrow Icon
                            Icon(
                              Icons.arrow_forward_ios,
                              color: ColorConstants.gray,
                              size: 16.sp,
                            ),
                          ],
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
                  },
                  child: CircleAvatar(
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