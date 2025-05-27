import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/show_plant_details_buttom_sheet.dart';
import 'package:aromaqueen/core/constants/plain_data.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  int selectedTabIndex = 1; // Start with Essential Oils tab (index 1)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar2(hasNewsFeed: false),
      body: PaddingWrapper(
        child: Column(
          children: [            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 12.w,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = 0;
                      });
                    },
                    child: tabs(isActive: selectedTabIndex == 0, title: "Recipes"),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = 1;
                      });
                    },
                    child: tabs(isActive: selectedTabIndex == 1, title: "Essential Oils"),
                  ),
                ),
              ],
            ),            Expanded(
              child: ListView.builder(
                itemCount: selectedTabIndex == 0 ? PlantData.recipes.length : PlantData.essentialOils.length,
                itemBuilder: (context, index) {
                  Map<String, List<String>> currentData = selectedTabIndex == 0 ? PlantData.recipes : PlantData.essentialOils;
                  String letter = currentData.keys.elementAt(index);
                  List<String> items = currentData[letter]!;

                  return InkWell(
                    onTap: () {
                      String itemName = items[index];
                      showPlantDetailSheet(context, itemName);
                    },
                    child: Padding(
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
                          ...items.asMap().entries.map((entry) {
                            int itemIndex = entry.key + 1;
                            String item = entry.value;
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4.0,
                              ),
                              child: Text(
                                '$itemIndex. $item',
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
  Container tabs({required String title, required bool isActive}) {
    return Container(
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
    );
  }
}
