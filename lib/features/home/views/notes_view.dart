import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/constants/plain_data.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar2(hasNewsFeed: false),
      body: PaddingWrapper(
        child: Column(
          children: [
            Row(
              spacing: 12.w,
              children: [
                tabs(isActive: false, title: "Recipes"),
                tabs(isActive: true, title: "Essential Oils"),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: PlantData.plantList.length,
                itemBuilder: (context, index) {
                  String letter = PlantData.plantList.keys.elementAt(index);
                  List<String> plants = PlantData.plantList[letter]!;

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          letter,
                          style: GoogleFonts.roboto(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w700,
                            color: ColorConstants.dark,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ...plants.asMap().entries.map((entry) {
                          int plantIndex = entry.key + 1;
                          String plant = entry.value;
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              '$plantIndex. $plant',
                              style: GoogleFonts.roboto(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: ColorConstants.dark,
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Flexible tabs({required String title, required bool isActive}) {
    return Flexible(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? ColorConstants.primary : ColorConstants.lightGray,
          borderRadius: BorderRadius.circular(8.r),
        ),
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: ColorConstants.dark,
            ),
          ),
        ),
      ),
    );
  }
}
